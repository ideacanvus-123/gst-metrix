const tabs = document.querySelectorAll(".tab-button");
  const contents = document.querySelectorAll(".content");

  tabs.forEach((tab, index) => {
    tab.addEventListener("click", () => {
      tabs.forEach(t => t.classList.remove("active"));
      tab.classList.add("active");

      contents.forEach(content => content.classList.add("hidden"));
      contents[index].classList.remove("hidden");
    });
  });

  if (tabs.length > 0) {
    tabs[0].click(); 
  }



const tabButtons = document.querySelectorAll(".tab-button2");
const tabContents = document.querySelectorAll(".tab-content2");


tabButtons.forEach(button => {
  button.addEventListener("click", () => {
    const targetTab = button.getAttribute("data-tab");


    tabButtons.forEach(btn => btn.classList.remove("active"));
    tabContents.forEach(content => content.classList.remove("active", "hidden"));

   
    button.classList.add("active");
    document.getElementById(targetTab).classList.add("active");
  });
});




// sittersDeails tabs
export class Utils {
  constructor(selector) {
      this.elements = Utils.getSelector(selector);
      this.element = this.get(0);
      return this;
  }

  removeClass(classNames) {
      this.each((el) => {
          // IE doesn't support multiple arguments
          classNames.split(' ').forEach((className) => {
              el.classList.remove(className);
          });
      });
      return this;
  }
  addClass(classNames = '') {
      this.each((el) => {
          // IE doesn't support multiple arguments
          classNames.split(' ').forEach((className) => {
              el.classList.add(className);
          });
      });
      return this;
  }
  attr(name, value) {
      if (value === undefined) {
          if (!this.element) {
              return '';
          }
          return this.element.getAttribute(name);
      }
      this.each((el) => {
          el.setAttribute(name, value);
      });
      return this;
  }
  find(selector) {
      return new Utils(Utils.getSelector(selector, this.element));
  }
  parent() {
      return new Utils(this.element.parentElement);
  }
  static getSelector(selector, context) {
      if (selector && typeof selector !== 'string') {
          if (selector.length !== undefined) {
              return selector;
          }
          return [selector];
      }
      context = context || document;

      // For performance reasons, use getElementById
      // eslint-disable-next-line no-control-regex
      const idRegex = /^#(?:[\w-]|\\.|[^\x00-\xa0])*$/;
      if (idRegex.test(selector)) {
          const el = document.getElementById(selector.substring(1));
          return el ? [el] : [];
      }
      return [].slice.call(context.querySelectorAll(selector) || []);
  }
  get(index) {
      if (index !== undefined) {
          return this.elements[index];
      }
      return this.elements;
  }
  each(func) {
      if (!this.elements.length) {
          return this;
      }
      this.elements.forEach((el, index) => {
          func.call(el, el, index);
      });
      return this;
  }
}

Utils.eventListeners = {};

export default function $utils(selector) {
  return new Utils(selector);
}






  



