$(function () {
    const CLASSNAME = "-visible";
    const TIMEOUT = 4000;
    const $target = $(".title");

    setInterval(() => {
      $target.addClass(CLASSNAME);
      setTimeout(() => {
        $target.removeClass(CLASSNAME);
      }, TIMEOUT);
    }, TIMEOUT * 2)
});