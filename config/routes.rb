Rails.application.routes.draw do

  get("/muggle_translate", { :controller => "translations", :action => "translation_form" })
  get("/wizard_translate", { :controller => "translations", :action => "translate" })

  get("/add", { :controller => "calculations", :action => "addition_form" })
  get("/wizard_add", { :controller => "calculations", :action => "add" })

  get("/subtract", { :controller => "calculations", :action => "subtraction_form" })
  get("/wizard_subtract", { :controller => "calculations", :action => "subtract" })

  get("/multiply", { :controller => "calculations", :action => "multiplication_form" })
  get("/wizard_multiply", { :controller => "calculations", :action => "multiply" })

  get("/divide", { :controller => "calculations", :action => "division_form" })
  get("/wizard_divide", { :controller => "calculations", :action => "divide" })

  get("/", { :controller => "calculations", :action => "addition_form" })

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
