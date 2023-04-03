//practice with enums
//directions

enum CompassDirection {
    case north
    case south
    case east
    case west
}

//enum with values
enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case square(side: Double)
}
//days of the week
enum Weekday: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

//enum with formulas
enum GeometricShape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case square(side: Double)
    
    func area() -> Double {
        switch self {
        case .circle(let radius):
            return .pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        case .square(let side):
            return side * side
        }
    }
}

//practice resource for the 4x4 tic tac toe board

import Foundation

enum Player {
    case none
    case player1
    case player2
}

class TicTacToeBoard {
    private let size = 4
    private var board: [[Player]]
    
    init() {
        board = Array(repeating: Array(repeating: .none, count: size), count: size)
    }
    
    func displayBoard() {
        for row in board {
            for cell in row {
                let symbol: String
                switch cell {
                case .none:
                    symbol = "-"
                case .player1:
                    symbol = "X"
                case .player2:
                    symbol = "O"
                }
                print(symbol, terminator: " ")
            }
            print()
        }
    }
}

let ticTacToeBoard = TicTacToeBoard()
ticTacToeBoard.displayBoard()

//intial research into what logic  could look like for a bot that makes the best move in game this was a generated sample code and I had to do various research for what most of this meant which will be reflected in my next app journal
function bestMove(board, player) -> (row, col):
    Initialize bestScore to -Infinity
    Initialize bestMove to None

    For each cell (row, col) in board:
        If cell is empty:
            Make a temporary move in the cell for the current player
            Calculate the score using minimax algorithm
            Undo the temporary move

            If score > bestScore:
                bestScore = score
                bestMove = (row, col)

    Return bestMove

function minimax(board, depth, maximizingPlayer) -> score:
    If game is over (win, draw, or maximum depth reached):
        Return the score of the game state

    If maximizingPlayer:
        Initialize maxEval to -Infinity

        For each cell in board:
            If cell is empty:
                Make a temporary move in the cell for the maximizing player
                Calculate the score using minimax function (recursion) with depth + 1 and maximizingPlayer = false
                Undo the temporary move

                Update maxEval with the maximum value between maxEval and score

        Return maxEval
    Else:
        Initialize minEval to Infinity

        For each cell in board:
            If cell is empty:
                Make a temporary move in the cell for the minimizing player
                Calculate the score using minimax function (recursion) with depth + 1 and maximizingPlayer = true
                Undo the temporary move

                Update minEval with the minimum value between minEval and score

        Return minEval
