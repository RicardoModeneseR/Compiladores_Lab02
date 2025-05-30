// Generated from Exemplo01.g by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Exemplo01Parser}.
 */
public interface Exemplo01Listener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Exemplo01Parser#begin}.
	 * @param ctx the parse tree
	 */
	void enterBegin(Exemplo01Parser.BeginContext ctx);
	/**
	 * Exit a parse tree produced by {@link Exemplo01Parser#begin}.
	 * @param ctx the parse tree
	 */
	void exitBegin(Exemplo01Parser.BeginContext ctx);
	/**
	 * Enter a parse tree produced by {@link Exemplo01Parser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(Exemplo01Parser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link Exemplo01Parser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(Exemplo01Parser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link Exemplo01Parser#op}.
	 * @param ctx the parse tree
	 */
	void enterOp(Exemplo01Parser.OpContext ctx);
	/**
	 * Exit a parse tree produced by {@link Exemplo01Parser#op}.
	 * @param ctx the parse tree
	 */
	void exitOp(Exemplo01Parser.OpContext ctx);
}