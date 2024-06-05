<template>
  <div>
    <h2>Table 1</h2>
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Index #</th>
            <th>Value</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(item, index) in data" :key="index">
            <td>{{ item.Index_ }}</td>
            <td>{{ item.Value }}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <br><br><br>
    <h2>Table 2</h2>
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Category</th>
            <th>Value</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(expression, category) in expressions" :key="category">
            <td>{{ category }}</td>
            <td>{{ calculateValue(expression) }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>


<script>
import { ApiConstant } from './repository/APIConstant';
import axios from 'axios';

export default {
  data() {
    return {
      data: [],
      expressions: {
        Alpha: "A5 + A20",
        Beta: "A15 / A7",
        Charlie: "A13 * A12"
      },
    }
  },
  async mounted() {
    await this.getInput();
  },
  methods: {
    async getInput() {
      console.log("test");
      try {
        var header = {
          "Content-Type": "application/json",
        };
        var url = ApiConstant.GetInputURL;
        const result = await axios.get(
          url, { headers: header }
        );
        if (result.status === 200) {
          console.log(result.data);
          this.data = result.data; // Assign the entire array to a property
        } else {
          alert(result.data);
        }
      } catch (error) {
        console.error(error);
        // Handle error
      }
    },
    calculateValue(expression) {
      const keys = Object.keys(this.data.reduce((acc, item) => ({ ...acc, [item.Index_]: item.Value }), {}));
      const values = Object.values(this.data.reduce((acc, item) => ({ ...acc, [item.Index_]: item.Value }), {}));

      // Replace keys in the expression with their corresponding values
      const replacedExpression = expression.replace(/A\d+/g, match => {
        const index = keys.indexOf(match);
        return index !== -1 ? values[index] : match;
      });

      // Evaluate the expression
      try {
        return eval(replacedExpression);
      } catch (error) {
        console.error("Error evaluating expression:", error);
        return "Error"; // Return error message if evaluation fails
      }
    },
    processExpressions(data) {
      return data.reduce((acc, item) => {
        if (item.Index_ && item.Value) {
          acc[item.Index_] = item.Value;
        }
        return acc;
      }, {});
    }
  }
}
</script>

