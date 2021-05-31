const moduleName = (str) => {
  const [firstName, ...moduleName] = str.toLowerCase().split("-");
  if (firstName === "rescript") {
    return moduleName.join("");
  }
  return str;
};

const testModuleName = (str) => `dev__${moduleName(str).toLowerCase()}`;

const helpers = {
  testModuleName,
  moduleName,
};

module.exports = {
  helpers,
};
