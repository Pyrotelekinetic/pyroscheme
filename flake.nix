{

description = "A Nix Flake for my custom 16 color palette.";

outputs = { self }: {
  colors = {
    black = "#1c1c1c";
    blackBright = "#515151";
    red = "#af004f";
    redBright = "#b03f72";
    green = "#1d5e44";
    greenBright = "#527c6b";
    yellow = "#af871c";
    yellowBright = "#ae9b68";
    blue = "#1c5f87";
    blueBright = "#517c96";
    magenta = "#5f1c5f";
    magentaBright = "#7c517c";
    cyan = "#307c77";
    cyanBright = "#628784";
    white = "#afafaf";
    whiteBright = "#dcdcdc";
  };
};

}
