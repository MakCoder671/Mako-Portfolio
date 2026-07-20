component {
  // This gives the website its own name inside Lucee.
  this.name = "MakoPortfolio";

  // Sessions will be turned on later when the private admin login is built.
  this.sessionManagement = false;

  // This asks Lucee to protect common form and URL values from script injection.
  this.scriptProtect = "all";
}
