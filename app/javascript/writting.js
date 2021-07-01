$(function () {
    const CLASSNAME = "-visible";
    const TIMEOUT = 2500;
    const $target = $(".title");

    setInterval(() => {
      $target.addClass(CLASSNAME);
      setTimeout(() => {
        $target.removeClass(CLASSNAME);
      }, TIMEOUT);
    }, TIMEOUT * 2)
});