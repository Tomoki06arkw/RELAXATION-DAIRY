$(function () {
    const INDEX = "-visible";
    const TIMEOUT = 4000;
    const $target = $(".title");

    setInterval(() => {
      $target.addClass(INDEX);
      setTimeout(() => {
        $target.removeClass(INDEX);
      }, TIMEOUT);
    }, TIMEOUT * 2)
});