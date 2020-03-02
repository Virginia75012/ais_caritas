import "slick-carousel";
import "custom/carousel";
import $ from 'jquery'

const initSlick = () => {
  // $(".variable-width").slick({
  //   infinite: true,
  //   speed: 300,
  //   slidesToShow: 1,
  //   variableWidth: true
  // });
  $('.variable-width').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
  });
};
export { initSlick };
