# Copyright 2014 de Larissa Reis e Icaro Jerry
#
# Este arquivo é parte do programa Marque Denúncia. O Marque Denúncia é um
# software livre; você pode redistribuí-lo e/ou modificá-lo dentro dos termos da
# GNU General Public License como publicada pela Fundação do Software Livre
# (FSF); na versão 3 da Licença. Este programa é distribuído na esperança que
# possa ser útil, mas SEM NENHUMA GARANTIA; sem uma garantia implícita de
# ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a licença para
# maiores detalhes. Você deve ter recebido uma cópia da GNU General Public
# License, sob o título LICENCA, junto com este programa, se não, acesse
# http://www.gnu.org/licenses/

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'admin', first_name: 'Icaro', last_name: 'Jerry', birth: Date.today, gender: 'M', cpf: '000.000.000-00', admin: true, email: 'test1@localhost.localdomain', password: '11111111', password_confirmation: '11111111').confirm!

incident_types = ['Lesão Corporal', 'Estupro', 'Destruição de bens/documentos',
                  'Calúnia, difamação e injúria', 'Assédio Sexual',
                  'Racismo e injúria racial', 'Lesbofobia', 'Assédio Moral',
                  'Ameaça', 'Abuso Sexual', 'Aborto provocado por outros',
                  'Encoxadas', 'Encoxadas', 'Exploração Sexual', 'Cárcere Privado',
                  'Tráfico de mulheres', 'Trabalho escravo']

incident_types.each { |name| IncidentType.create(description: name) }
