cell((1..4,1..4)).

block((X, Y), tl) :- cell((X, Y)), X < 3, Y < 3.
block((X, Y), tr) :- cell((X, Y)), X > 2, Y < 3.t there should be at
  value((1, 2), 2),            % least one answer set of B union H which represents a
  value((1, 3), 3),            % board extending the partial board:
  value((1, 4), 4),            %
  value((2, 3), 2)             %         #-------#-------#
}, {                           %         | 1 : 2 | 3 : 4 |
  value((1, 1), 2),            %         | - + - | - + - |  such that the first cell
  value((1, 1), 3),            %         |   :   | 2 :   |  does not also contain a
  value((1, 1), 4)             %         #-------#-------#  value other than 1.
}).                            %         |   :   |   :   |
                               %         | - + - | - + - |
                               %         |   :   |   :   |
                               %         #-------#-------#


#neg(b, { value((1, 1), 1), value((1, 3), 1) },{}).
#neg(c, { value((1, 1), 1), value((3, 1), 1) },{}).
#neg(d, { value((1, 1), 1), value((2, 2), 1) },{}).

% The negative examples say that there should be no answer set corresponding to a
% board extending any of the partial boards:
%
%     #-------#-------#      #-------#-------#      #-------#-------#
%     | 1 :   | 1 :   |      | 1 :   |   :   |      | 1 :   |   :   |
%     | - + - | - + - |      | - + - | - + - |      | - + - | - + - |
%     |   :   |   :   |      |   :   |   :   |      |   : 1 |   :   |
%     #-------#-------#      #-------#-------#      #-------#-------#
%     |   :   |   :   |      | 1 :   |   :   |      |   :   |   :   |
%     | - + - | - + - |      | - + - | - + - |      | - + - | - + - |
%     |   :   |   :   |      |   :   |   :   |      |   :   |   :   |
%     #-------#-------#      #-------#-------#      #-------#-------#

#modeha(value(var(cell),const(number))).

#modeb(2,value(var(cell),var(val))).
#modeb(1,same_row(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,same_block(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,same_col(var(cell), var(cell)), (anti_reflexive)).
#modeb(1,cell(var(cell))).

#constant(number, 1).
#constant(number, 2).
#constant(number, 3).
#constant(number, 4).

#minhl(4).
#maxhl(4).
#disallow_multiple_head_variables.
#max_penalty(30).
