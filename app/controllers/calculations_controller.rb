class CalculationsController < ApplicationController
  def addition_form
    render({ :template => "calculation_templates/addition_form.html.erb" })
  end

  def subtraction_form
    render({ :template => "calculation_templates/subtraction_form.html.erb" })
  end

  def multiplication_form
    render({ :template => "calculation_templates/multiplication_form.html.erb" })
  end

  def division_form
    render({ :template => "calculation_templates/division_form.html.erb" })
  end

  def add
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result = @first_number.to_f + @second_number.to_f

    @log = cookies.fetch(:addition_results)

    if @log == nil
      @log = Array.new
    end

    entry = {
      :first => @first_number,
      :second => @second_number,
      :sum => @result
    }
    
    @log.unshift(entry)

    cookies.store(:addition_results, @log[0..4])

    render({ :template => "calculation_templates/add_results.html.erb" })
  end

  def subtract
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @second_number.to_f - @first_number.to_f

    render({ :template => "calculation_templates/subtract_results.html.erb" })
  end

  def multiply
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number.to_f * @second_number.to_f

    render({ :template => "calculation_templates/multiply_results.html.erb" })
  end

  def divide
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number.to_f / @second_number.to_f

    render({ :template => "calculation_templates/divide_results.html.erb" })
  end
end
