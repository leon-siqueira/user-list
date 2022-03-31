module UsersHelper
  def gender_transltate(gender)
    case gender
    when 'male'
      'Masculino'
    when 'female'
      'Feminino'
    else
      'Não especificado'
    end
  end
end
