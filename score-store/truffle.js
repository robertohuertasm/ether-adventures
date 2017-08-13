module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    production: {
      host: "blcu5ks55.northcentralus.cloudapp.azure.com",
      port: 8545,
      network_id: "*" // Match any network id
    }
  }
};
