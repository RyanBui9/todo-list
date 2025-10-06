#!/bin/bash

# --- Webpack Quick Setup Script ---
# Assumes you are already inside the project directory

echo "Initializing npm project..."
npm init -y

echo "Installing Webpack and development dependencies..."
# npm install --save-dev webpack webpack-cli html-webpack-plugin

npm install --save-dev \
    webpack \
    webpack-cli \
    webpack-dev-server \
    html-webpack-plugin \
    style-loader \
    css-loader \
    html-loader 

# --- Creating directory structure ---
mkdir src
touch src/index.js
touch src/template.html
touch src/styles.css

cat << EOF > src/index.js
import "./styles.css";

console.log("Hello World");
EOF


cat << EOF > src/template.html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

</body>

</html>
EOF

cat << EOF > src/styles.css
body {
  background-color: rebeccapurple;
}
EOF

# --- Creating Webpack Configuration File ---
cat << EOF > webpack.config.js
// webpack.config.js
const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");

module.exports = {
  mode: "development",
  entry: "./src/index.js",
  output: {
    filename: "main.js",
    path: path.resolve(__dirname, "dist"),
    clean: true,
  },
  devtool: "eval-source-map",
  devServer: {
    watchFiles: ["./src/template.html"],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: "./src/template.html",
    }),
  ],
  module: {
    rules: [
      {
        test: /\.css$/i,
        use: ["style-loader", "css-loader"],
      },
      {
        test: /\.html$/i,
        loader: "html-loader",
      },
      {
        test: /\.(png|svg|jpg|jpeg|gif)$/i,
        type: "asset/resource",
      },
    ],
  },
};
EOF

npx webpack