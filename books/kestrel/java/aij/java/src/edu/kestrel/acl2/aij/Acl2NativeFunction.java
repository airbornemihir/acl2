/*
 * Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
 * License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
 * Author: Alessandro Coglio (coglio@kestrel.edu)
 */

package edu.kestrel.acl2.aij;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Representation of ACL2 native functions in terms,
 * and implementation of these functions in Java.
 * These are functions that are natively implemented  in Java,
 * as opposed to the functions that are defined via terms
 * (see {@link Acl2DefinedFunction}).
 * <p>
 * These native functions include the ACL2 primitive functions,
 * i.e. the ones listed in the {@code primitive} topic of the ACL2 manual.
 * These functions do not have an {@code unnormalized-body} property,
 * and thus they are not part of the defined functions
 * (see {@link Acl2DefinedFunction}).
 * <p>
 * These native functions also include the ACL2 "pseudo-function" {@code or},
 * described in {@link Acl2FunctionApplication#eval(Acl2Value[])}.
 * <p>
 * More native functions could be added here in the future,
 * e.g. as optimized implementations of ACL2 built-in functions.
 * <p>
 * These native functions are implemented in the {@code exec...} static methods,
 * which are public so that these implementations is available to
 * code external to AIJ.
 * These methods operate on ACL2 values
 * in the same way as the corresponding ACL2 functions.
 * The methods that take {@link Acl2Value} arguments
 * operate on all the ACL2 values, regardless of guards:
 * in other words, they run as if guard checking were off,
 * i.e. they run "in the logic" as the ACL2 documentation says sometimes.
 * Some of these methods have overloaded variants that operate
 * on narrower types that are contained in the guards:
 * these can be used when guards are satisfied,
 * and may be more efficient;
 * some also return narrower result types.
 * <p>
 * Each native function is represented by
 * a singleton instance of a direct subclass of this class.
 * Each such singleton instance calls the appropriate {@code exec...} method
 * in its {@link Acl2Function#apply(Acl2Value[])} method;
 * the {@code exec...} method is always without {@code UnderGuard} in its name.
 * <p>
 * The direct subclasses that represent the native functions
 * are private nested classes of this class.
 * This way, only code in this class can create instances of those classes,
 * which it does just once per class, thus ensuring the singleton property.
 */
public abstract class Acl2NativeFunction extends Acl2NamedFunction {

    //////////////////////////////////////// private members:

    /**
     * Constructs a native function with the given name.
     *
     * @param name Name of the native function.
     */
    private Acl2NativeFunction(Acl2Symbol name) {
        super(name);
    }

    /**
     * All the native functions.
     * These are stored as the values of a map
     * that has the names of the native functions as keys.
     * The map is created in advance by the static initializer,
     * and the native functions are reused
     * by the {@link #getInstance(Acl2Symbol)} method;
     * In other words, the native functions are interned.
     * This field is never {@code null},
     * its keys are never {@code null},
     * and its values are never {@code null}.
     */
    private static final Map<Acl2Symbol, Acl2NativeFunction> functions =
            new HashMap<>();

    static {
        functions.put(Acl2Symbol.CHARACTERP, new Characterp());
        functions.put(Acl2Symbol.STRINGP, new Stringp());
        functions.put(Acl2Symbol.SYMBOLP, new Symbolp());
        functions.put(Acl2Symbol.INTEGERP, new Integerp());
        functions.put(Acl2Symbol.RATIONALP, new Rationalp());
        functions.put(Acl2Symbol.COMPLEX_RATIONALP, new ComplexRationalp());
        functions.put(Acl2Symbol.ACL2_NUMBERP, new Acl2Numberp());
        functions.put(Acl2Symbol.CONSP, new Consp());
        functions.put(Acl2Symbol.CHAR_CODE, new CharCode());
        functions.put(Acl2Symbol.CODE_CHAR, new CodeChar());
        functions.put(Acl2Symbol.COERCE, new Coerce());
        functions.put(Acl2Symbol.INTERN_IN_PACKAGE_OF_SYMBOL,
                new InternInPackageOfSymbol());
        functions.put(Acl2Symbol.SYMBOL_PACKAGE_NAME, new SymbolPackageName());
        functions.put(Acl2Symbol.SYMBOL_NAME, new SymbolName());
        functions.put(Acl2Symbol.PKG_IMPORTS, new PkgImports());
        functions.put(Acl2Symbol.PKG_WITNESS, new PkgWitness());
        functions.put(Acl2Symbol.UNARY_MINUS, new UnaryMinus());
        functions.put(Acl2Symbol.UNARY_SLASH, new UnarySlash());
        functions.put(Acl2Symbol.BINARY_PLUS, new BinaryPlus());
        functions.put(Acl2Symbol.BINARY_STAR, new BinaryStar());
        functions.put(Acl2Symbol.LESS_THAN, new LessThan());
        functions.put(Acl2Symbol.COMPLEX, new Complex());
        functions.put(Acl2Symbol.REALPART, new RealPart());
        functions.put(Acl2Symbol.IMAGPART, new ImagPart());
        functions.put(Acl2Symbol.NUMERATOR, new Numerator());
        functions.put(Acl2Symbol.DENOMINATOR, new Denominator());
        functions.put(Acl2Symbol.CONS, new Cons());
        functions.put(Acl2Symbol.CAR, new Car());
        functions.put(Acl2Symbol.CDR, new Cdr());
        functions.put(Acl2Symbol.EQUAL, new Equal());
        functions.put(Acl2Symbol.BAD_ATOM_LESS_THAN_OR_EQUAL_TO,
                new BadAtomLessThanOrEqualTo());
        functions.put(Acl2Symbol.IF, new If());
        functions.put(Acl2Symbol.OR, new Or());
    }

    /**
     * Representation of the {@code characterp} ACL2 primitive function.
     */
    private static final class Characterp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Characterp() {
            super(Acl2Symbol.CHARACTERP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCharacterp(values[0]);
        }
    }

    /**
     * Representation of the {@code stringp} ACL2 primitive function.
     */
    private static final class Stringp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Stringp() {
            super(Acl2Symbol.STRINGP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execStringp(values[0]);
        }
    }

    /**
     * Representation of the {@code symbolp} ACL2 primitive function.
     */
    private static final class Symbolp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Symbolp() {
            super(Acl2Symbol.SYMBOLP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execSymbolp(values[0]);
        }
    }

    /**
     * Representation of the {@code integerp} ACL2 primitive function.
     */
    private static final class Integerp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Integerp() {
            super(Acl2Symbol.INTEGERP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execIntegerp(values[0]);
        }
    }

    /**
     * Representation of the {@code rationalp} ACL2 primitive function.
     */
    private static final class Rationalp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Rationalp() {
            super(Acl2Symbol.RATIONALP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execRationalp(values[0]);
        }
    }

    /**
     * Representation of the {@code complex-rationalp} ACL2 primitive function.
     */
    private static final class ComplexRationalp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private ComplexRationalp() {
            super(Acl2Symbol.COMPLEX_RATIONALP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execComplexRationalp(values[0]);
        }
    }

    /**
     * Representation of the {@code acl2-numberp} ACL2 primitive function.
     */
    private static final class Acl2Numberp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Acl2Numberp() {
            super(Acl2Symbol.ACL2_NUMBERP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execAcl2Numberp(values[0]);
        }
    }

    /**
     * Representation of the {@code consp} ACL2 primitive function.
     */
    private static final class Consp extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Consp() {
            super(Acl2Symbol.CONSP);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execConsp(values[0]);
        }
    }

    /**
     * Representation of the {@code char-code} ACL2 primitive function.
     */
    private static final class CharCode extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private CharCode() {
            super(Acl2Symbol.CHAR_CODE);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCharCode(values[0]);
        }
    }

    /**
     * Representation of the {@code code-char} ACL2 primitive function.
     */
    private static final class CodeChar extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private CodeChar() {
            super(Acl2Symbol.CODE_CHAR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCodeChar(values[0]);
        }
    }

    /**
     * Representation of the {@code coerce} ACL2 primitive function.
     */
    private static final class Coerce extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Coerce() {
            super(Acl2Symbol.COERCE);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCoerce(values[0], values[1]);
        }
    }

    /**
     * Representation of
     * the {@code intern-in-package-of-symbol} ACL2 primitive function.
     */
    private static final class InternInPackageOfSymbol
            extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private InternInPackageOfSymbol() {
            super(Acl2Symbol.INTERN_IN_PACKAGE_OF_SYMBOL);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execInternInPackageOfSymbol(values[0], values[1]);
        }
    }

    /**
     * Representation of
     * the {@code symbol-package-name} ACL2 primitive function.
     */
    private static final class SymbolPackageName extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private SymbolPackageName() {
            super(Acl2Symbol.SYMBOL_PACKAGE_NAME);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execSymbolPackageName(values[0]);
        }
    }

    /**
     * Representation of the {@code symbol-name} ACL2 primitive function.
     */
    private static final class SymbolName extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private SymbolName() {
            super(Acl2Symbol.SYMBOL_NAME);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) throws Acl2EvaluationException {
            return execSymbolName(values[0]);
        }
    }

    /**
     * Representation of the {@code pkg-imports} ACL2 primitive function.
     */
    private static final class PkgImports extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private PkgImports() {
            super(Acl2Symbol.PKG_IMPORTS);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         * An exception is thrown if the string does not name a known package
         * (this includes the case in which
         * the string is not a valid package name).
         * This is in accordance with
         * the ACL2 manual page for {@code pkg-imports},
         * which says that evaluation fails in this case.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         * @throws Acl2EvaluationException If the package name is invalid
         *                                 or the package is not defined.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) throws Acl2EvaluationException {
            return execPkgImports(values[0]);
        }
    }

    /**
     * Representation of the {@code pkg-witness} ACL2 primitive function.
     */
    private static final class PkgWitness extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private PkgWitness() {
            super(Acl2Symbol.PKG_WITNESS);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         * An exception is thrown if the string does not name a known package
         * (this includes the case in which
         * the string is not a valid package name).
         * This is in accordance with
         * the ACL2 manual page for {@code pkg-witness},
         * which says that evaluation fails in this case.
         *
         * @throws Acl2EvaluationException If the package name is invalid
         *                                 or the package is not defined.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) throws Acl2EvaluationException {
            return execPkgWitness(values[0]);
        }
    }

    /**
     * Representation of the {@code unary--} ACL2 primitive function.
     */
    private static final class UnaryMinus extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private UnaryMinus() {
            super(Acl2Symbol.UNARY_MINUS);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execUnaryMinus(values[0]);
        }
    }

    /**
     * Representation of the {@code unary-/} ACL2 primitive function.
     */
    private static final class UnarySlash extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private UnarySlash() {
            super(Acl2Symbol.UNARY_SLASH);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execUnarySlash(values[0]);
        }
    }

    /**
     * Representation of the {@code binary-+} ACL2 primitive function.
     */
    private static final class BinaryPlus extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private BinaryPlus() {
            super(Acl2Symbol.BINARY_PLUS);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execBinaryPlus(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code binary-*} ACL2 primitive function.
     */
    private static final class BinaryStar extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private BinaryStar() {
            super(Acl2Symbol.BINARY_STAR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execBinaryStar(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code <} ACL2 primitive function.
     */
    private static final class LessThan extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private LessThan() {
            super(Acl2Symbol.LESS_THAN);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execLessThan(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code complex} ACL2 primitive function.
     */
    private static final class Complex extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Complex() {
            super(Acl2Symbol.COMPLEX);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execComplex(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code realpart} ACL2 primitive function.
     */
    private static final class RealPart extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private RealPart() {
            super(Acl2Symbol.REALPART);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execRealPart(values[0]);
        }
    }

    /**
     * Representation of the {@code imagpart} ACL2 primitive function.
     */
    private static final class ImagPart extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private ImagPart() {
            super(Acl2Symbol.IMAGPART);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execImagPart(values[0]);
        }
    }

    /**
     * Representation of the {@code numerator} ACL2 primitive function.
     */
    private static final class Numerator extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Numerator() {
            super(Acl2Symbol.NUMERATOR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execNumerator(values[0]);
        }
    }

    /**
     * Representation of the {@code denominator} ACL2 primitive function.
     */
    private static final class Denominator extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Denominator() {
            super(Acl2Symbol.DENOMINATOR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execDenominator(values[0]);
        }
    }

    /**
     * Representation of the {@code cons} ACL2 primitive function.
     */
    private static final class Cons extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Cons() {
            super(Acl2Symbol.CONS);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCons(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code car} ACL2 primitive function.
     */
    private static final class Car extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Car() {
            super(Acl2Symbol.CAR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCar(values[0]);
        }
    }

    /**
     * Representation of the {@code cdr} ACL2 primitive function.
     */
    private static final class Cdr extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Cdr() {
            super(Acl2Symbol.CDR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 1.
         */
        @Override
        int getArity() {
            return 1;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execCdr(values[0]);
        }
    }

    /**
     * Representation of the {@code equal} ACL2 primitive function.
     */
    private static final class Equal extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Equal() {
            super(Acl2Symbol.EQUAL);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execEqual(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code bad-atom<=} ACL2 primitive function.
     */
    private static final class BadAtomLessThanOrEqualTo
            extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private BadAtomLessThanOrEqualTo() {
            super(Acl2Symbol.BAD_ATOM_LESS_THAN_OR_EQUAL_TO);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given values.
         * The ACL2 manual does not really document this function,
         * but the release notes for Version 2.9.1 of ACL2 say that
         * this function returns {@code nil} on values that are not bad atoms.
         * This is confirmed by inspecting
         * the Common Lisp code that implements this function
         * in the source code of ACL2.
         * ACL2 values in AIJ are never bad atoms
         * because there is no way to construct them without modifying AIJ
         * (in particular, {@link Acl2Value} and its subclasses
         * cannot be subclassed outside the AIJ package);
         * thus, this native implementation always returns {@code nil}.
         * This application never fails.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execBadAtomLessThanOrEqualTo(values[0], values[1]);
        }
    }

    /**
     * Representation of the {@code if} ACL2 primitive function.
     */
    private static final class If extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private If() {
            super(Acl2Symbol.IF);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 3.
         */
        @Override
        int getArity() {
            return 3;
        }

        /**
         * Applies this native function to the given ACL2 values.
         * This is normally not used during execution,
         * because {@code if} is evaluated non-strictly
         * (see {@link Acl2FunctionApplication#eval(Acl2Value[])}.
         * However, if code external to AIJ calls
         * {@link Acl2NamedFunction#call(Acl2Value[])}
         * to evaluate a call of {@code if} on some argument values,
         * then we use this method below to return the result.
         * This application never fails.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            return execIf(values[0], values[1], values[2]);
        }

        /**
         * Checks if this function is the {@code if} ACL2 primitive function.
         * This overrides the default implementation in
         * {@link Acl2NativeFunction#isIf()}.
         *
         * @return {@code true}.
         */
        @Override
        boolean isIf() {
            return true;
        }
    }

    /**
     * Representation of the {@code or} ACL2 "pseudo-function".
     */
    private static final class Or extends Acl2NativeFunction {

        /**
         * Constructs this native function.
         */
        private Or() {
            super(Acl2Symbol.OR);
        }

        /**
         * Returns the number of parameters of this native function.
         *
         * @return The number 2.
         */
        @Override
        int getArity() {
            return 2;
        }

        /**
         * Applies this native function to the given ACL2 values.
         * This is normally not used during execution,
         * because {@code or} is evaluated non-strictly
         * (see {@link Acl2FunctionApplication#eval(Acl2Value[])}.
         * However, if code external to AIJ calls
         * {@link Acl2NamedFunction#call(Acl2Value[])}
         * to evaluate a call of {@code or} on some argument values,
         * then we use this method below to return the result.
         * This application never fails.
         *
         * @param values The actual arguments to pass to the function.
         * @return The result of the function on the given arguments.
         */
        @Override
        Acl2Value apply(Acl2Value[] values) {
            Acl2Value x = values[0];
            Acl2Value y = values[1];
            if (x.equals(Acl2Symbol.NIL))
                return y;
            else
                return x;
        }

        /**
         * Checks if this function is the {@code or} ACL2 "pseudo-function".
         * This overrides the default implementation in
         * {@link Acl2NativeFunction#isOr()}.
         *
         * @return {@code true}
         */
        @Override
        boolean isOr() {
            return true;
        }
    }

    //////////////////////////////////////// package-private members:

    /**
     * Checks if this native function is the {@code if} ACL2 primitive function.
     * This default implementation, which returns {@code false},
     * is overridden in {@link If}.
     *
     * @return {@code false}.
     */
    @Override
    boolean isIf() {
        return false;
    }

    /**
     * Checks if this native function is the {@code or} ACL2 "pseudo-function".
     * This default implementation, which returns {@code false},
     * is overridden in {@link Or}.
     *
     * @return {@code false}.
     */
    @Override
    boolean isOr() {
        return false;
    }

    /**
     * Returns the native function with the given name.
     * If the symbol argument names a native function,
     * the unique object that represents it is returned.
     * Otherwise, {@code null} is returned;
     * it is intentional not to return an error in this case,
     * see {@link Acl2NamedFunction#make(Acl2Symbol)}.
     *
     * @param name The name of the native function.
     * @return The native function,
     * or {@code null} if the argument does not name a native function.
     */
    static Acl2NativeFunction getInstance(Acl2Symbol name) {
        return functions.get(name);
    }

    //////////////////////////////////////// public members:

    /**
     * Defines this native function.
     * This always throws an exception,
     * because native functions cannot be defined.
     * This method is needed to implement its abstract counterpart
     * in {@link Acl2NamedFunction#define(Acl2Symbol[], Acl2Term)}.
     *
     * @param parameters The formal parameters of the function definition.
     * @param body       The body of the function definition.
     * @throws IllegalArgumentException Always.
     */
    @Override
    public void define(Acl2Symbol[] parameters, Acl2Term body) {
        throw new IllegalArgumentException
                ("Attempting to define the native function "
                        + this.getName() + ".");
    }

    /**
     * Executes the native implementation of
     * the {@code characterp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execCharacterp(Acl2Value x) {
        return x.characterp();
    }

    /**
     * Executes the native implementation of
     * the {@code stringp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execStringp(Acl2Value x) {
        return x.stringp();
    }

    /**
     * Executes the native implementation of
     * the {@code symbolp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execSymbolp(Acl2Value x) {
        return x.symbolp();
    }

    /**
     * Executes the native implementation of
     * the {@code integerp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execIntegerp(Acl2Value x) {
        return x.integerp();
    }

    /**
     * Executes the native implementation of
     * the {@code rationalp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execRationalp(Acl2Value x) {
        return x.rationalp();
    }

    /**
     * Executes the native implementation of
     * the {@code complex-rationalp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execComplexRationalp(Acl2Value x) {
        return x.complexRationalp();
    }

    /**
     * Executes the native implementation of
     * the {@code acl2-numberp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execAcl2Numberp(Acl2Value x) {
        return x.acl2Numberp();
    }

    /**
     * Executes the native implementation of
     * the {@code consp} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Symbol execConsp(Acl2Value x) {
        return x.consp();
    }

    /**
     * Executes the native implementation of
     * the {@code char-code} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execCharCode(Acl2Value x) {
        return x.charCode();
    }

    /**
     * Executes the native implementation of
     * the {@code char-code} ACL2 primitive function,
     * on a character value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execCharCode(Acl2Character x) {
        // it is not clear how this compares to x.charCode() in speed:
        return Acl2Integer.make(x.getJavaChar());
    }

    /**
     * Executes the native implementation of
     * the {@code code-char} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Character execCodeChar(Acl2Value x) {
        return x.codeChar();
    }

    /**
     * Executes the native implementation of
     * the {@code code-char} ACL2 primitive function,
     * on an integer value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Character execCodeChar(Acl2Integer x) {
        // this should be faster than x.codeChar()
        // because we can avoid checking that the integer is in range:
        return Acl2Character.make((char) x.getJavaInt());
    }

    /**
     * Executes the native implementation of
     * the {@code coerce} ACL2 primitive function,
     * on any values.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Value execCoerce(Acl2Value x, Acl2Value y) {
        if (y.equals(Acl2Symbol.LIST))
            return x.coerceToList();
        else
            return x.coerceToString();
    }

    /**
     * Executes the native implementation of
     * the {@code coerce} ACL2 primitive function,
     * on any value as first argument and on a symbol as second argument.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Value execCoerce(Acl2Value x, Acl2Symbol y) {
        if (y.equals(Acl2Symbol.LIST)) {
            // it is not clear if this can be made faster
            // by knowing that x is an ACL2 string:
            return x.coerceToList();
        } else {
            // similar to the code in Acl2ConsPair.coerceToString(),
            // with some optimizations enabled by the fact that
            // x is known to be an ACL2 list of characters:
            List<Acl2Character> charList = new LinkedList<>();
            for (Acl2Value list = x;
                 !list.equals(Acl2Symbol.NIL);
                 list = list.cdr()) {
                charList.add((Acl2Character) list.car());
            }
            int size = charList.size();
            char[] charArray = new char[size];
            for (int i = 0; i < size; ++i)
                charArray[i] = charList.get(i).getJavaChar();
            return Acl2String.make(new String(charArray));
        }
    }

    /**
     * Executes the native implementation of
     * the {@code intern-in-package-of-symbol} ACL2 primitive function,
     * on any values.
     *
     * @param str The first actual argument to pass to the function.
     * @param sym The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execInternInPackageOfSymbol(Acl2Value str,
                                                         Acl2Value sym) {
        return str.internThisInPackageOf(sym);
    }

    /**
     * Executes the native implementation of
     * the {@code intern-in-package-of-symbol} ACL2 primitive function,
     * on a string as first argument and on a symbol as second argument.
     *
     * @param str The first actual argument to pass to the function.
     * @param sym The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execInternInPackageOfSymbol(Acl2String str,
                                                         Acl2Symbol sym) {
        // this may be faster than str.internThisInPackageOf(sym),
        // followed by sym.internInPackageOfThis(str):
        return Acl2Symbol.make(sym.getPackageName(), str);
    }

    /**
     * Executes the native implementation of
     * the {@code symbol-package-name} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2String execSymbolPackageName(Acl2Value x) {
        return x.symbolPackageName();
    }

    /**
     * Executes the native implementation of
     * the {@code symbol-package-name} ACL2 primitive function,
     * on a symbol value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2String execSymbolPackageName(Acl2Symbol x) {
        // it is not clear if this can be made faster
        // by knowing that x is an ACL2 symbol:
        return x.symbolPackageName();
    }

    /**
     * Executes the native implementation of
     * the {@code symbol-name} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2String execSymbolName(Acl2Value x) {
        return x.symbolName();
    }

    /**
     * Executes the native implementation of
     * the {@code symbol-name} ACL2 primitive function,
     * on a symbol value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2String execSymbolName(Acl2Symbol x) {
        // it is not clear how this compares to x.symbolName() in speed:
        return x.getName();
    }

    /**
     * Executes the native implementation of
     * the {@code pkg-imports} ACL2 primitive function,
     * on any value.
     *
     * @param pkg The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     * @throws Acl2EvaluationException If the package name is invalid
     *                                 or the package is not defined.
     */
    public static Acl2Value execPkgImports(Acl2Value pkg)
            throws Acl2EvaluationException {
        return pkg.pkgImports();
    }

    /**
     * Executes the native implementation of
     * the {@code pkg-imports} ACL2 primitive function,
     * on a string value.
     *
     * @param pkg The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     * @throws Acl2EvaluationException If the package name is invalid
     *                                 or the package is not defined.
     */
    public static Acl2Value execPkgImports(Acl2String pkg)
            throws Acl2EvaluationException {
        // it is not clear if this can be made faster
        // by knowing that pkg is an ACL2 string:
        return pkg.pkgImports();
    }

    /**
     * Executes the native implementation of
     * the {@code pkg-witness} ACL2 primitive function,
     * on any value.
     *
     * @param pkg The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     * @throws Acl2EvaluationException If the package name is invalid
     *                                 or the package is not defined.
     */
    public static Acl2Symbol execPkgWitness(Acl2Value pkg)
            throws Acl2EvaluationException {
        return pkg.pkgWitness();
    }

    /**
     * Executes the native implementation of
     * the {@code pkg-witness} ACL2 primitive function,
     * on a string value.
     *
     * @param pkg The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     * @throws Acl2EvaluationException If the package name is invalid
     *                                 or the package is not defined.
     */
    public static Acl2Symbol execPkgWitness(Acl2String pkg)
            throws Acl2EvaluationException {
        // it is not clear if this can be made faster
        // by knowing that pkg is an ACL2 string:
        return pkg.pkgWitness();
    }

    /**
     * Executes the native implementation of
     * the {@code unary--} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Number execUnaryMinus(Acl2Value x) {
        return x.negate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary--} ACL2 primitive function,
     * on a number.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Number execUnaryMinus(Acl2Number x) {
        // it is not clear if this can be made faster
        // by knowing that x is a number:
        return x.negate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary--} ACL2 primitive function,
     * on a rational.
     * Since rationals are closed under this operation,
     * the result is a rational.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execUnaryMinus(Acl2Rational x) {
        return x.negate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary--} ACL2 primitive function,
     * on an integer.
     * Since integers are closed under this operation,
     * the result is an integer.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execUnaryMinus(Acl2Integer x) {
        return x.negate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary-/} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Number execUnarySlash(Acl2Value x) {
        return x.reciprocate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary-/} ACL2 primitive function,
     * on a number.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Number execUnarySlash(Acl2Number x) {
        // it is not clear if this can be made faster
        // by knowing that x is an ACL2 number:
        return x.reciprocate();
    }

    /**
     * Executes the native implementation of
     * the {@code unary-/} ACL2 primitive function,
     * on a rational.
     * Since rationals are closed under this operation,
     * the result is a rational.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execUnarySlash(Acl2Rational x) {
        return x.reciprocate();
    }

    /**
     * Executes the native implementation of
     * the {@code binary-+} ACL2 primitive function,
     * on any values.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execBinaryPlus(Acl2Value x, Acl2Value y) {
        return x.addValue(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-+} ACL2 primitive function,
     * on numbers.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execBinaryPlus(Acl2Number x, Acl2Number y) {
        // this should be slightly faster than x.addValue(y),
        // which in turn calls y.addNumber(x):
        return x.addNumber(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-+} ACL2 primitive function,
     * on rationals.
     * Since rationals are closed under this operation,
     * the result is a rational.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Rational execBinaryPlus(Acl2Rational x, Acl2Rational y) {
        // this should be slightly faster than x.addNumber(y),
        // which in turn calls y.addRational(x):
        return x.addRational(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-+} ACL2 primitive function,
     * on integers.
     * Since integers are closed under this operation,
     * the result is an integer.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Integer execBinaryPlus(Acl2Integer x, Acl2Integer y) {
        // this should be slightly faster than x.addRational(y),
        // which in turn calls y.addInteger(x):
        return x.addInteger(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-*} ACL2 primitive function,
     * on any values.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execBinaryStar(Acl2Value x, Acl2Value y) {
        return x.multiplyValue(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-*} ACL2 primitive function,
     * on numbers.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execBinaryStar(Acl2Number x, Acl2Number y) {
        // this should be slightly faster than x.multiplyValue(y),
        // which in turn calls y.multiplyNumber(x):
        return x.multiplyNumber(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-*} ACL2 primitive function,
     * on rationals.
     * Since rationals are closed under this operation,
     * the result is a rational.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Rational execBinaryStar(Acl2Rational x, Acl2Rational y) {
        // this should be slightly faster than x.multiplyNumber(y),
        // which in turn calls y.multiplyRational(x):
        return x.multiplyRational(y);
    }

    /**
     * Executes the native implementation of
     * the {@code binary-*} ACL2 primitive function,
     * on integers.
     * Since integers are closed under this operation,
     * the result is an integer.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Integer execBinaryStar(Acl2Integer x, Acl2Integer y) {
        // this should be slightly faster than x.multiplyRational(y),
        // which in turn calls y.multiplyInteger(x):
        return x.multiplyInteger(y);
    }

    /**
     * Executes the native implementation of
     * the {@code <} ACL2 primitive function,
     * on any values.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execLessThan(Acl2Value x, Acl2Value y) {
        int realCmp = x.realpart().compareTo(y.realpart());
        if (realCmp < 0 ||
                realCmp == 0 && x.imagpart().compareTo(y.imagpart()) < 0)
            return Acl2Symbol.T;
        else
            return Acl2Symbol.NIL;
    }

    /**
     * Executes the native implementation of
     * the {@code <} ACL2 primitive function,
     * on rationals.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execLessThan(Acl2Rational x, Acl2Rational y) {
        // this should be generally faster than the code in execLessThan():
        if (x.compareToRational(y) < 0)
            return Acl2Symbol.T;
        else
            return Acl2Symbol.NIL;
    }

    /**
     * Executes the native implementation of
     * the {@code complex} ACL2 primitive function,
     * on any values.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execComplex(Acl2Value x, Acl2Value y) {
        return Acl2Number.make(x.rfix(), y.rfix());
    }

    /**
     * Executes the native implementation of
     * the {@code complex} ACL2 primitive function,
     * on rationals.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Number execComplex(Acl2Rational x, Acl2Rational y) {
        // this avoids calling rfix():
        return Acl2Number.make(x, y);
    }

    /**
     * Executes the native implementation of
     * the {@code realpart} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execRealPart(Acl2Value x) {
        return x.realpart();
    }

    /**
     * Executes the native implementation of
     * the {@code realpart} ACL2 primitive function,
     * on a number.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execRealPart(Acl2Number x) {
        // it is not clear how this compares to x.realpart() in speed:
        return x.getRealPart();
    }

    /**
     * Executes the native implementation of
     * the {@code imagpart} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execImagPart(Acl2Value x) {
        return x.imagpart();
    }

    /**
     * Executes the native implementation of
     * the {@code imagpart} ACL2 primitive function,
     * on a number.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Rational execImagPart(Acl2Number x) {
        // it is not clear how this compares to x.imagpart() in speed:
        return x.getImaginaryPart();
    }

    /**
     * Executes the native implementation of
     * the {@code numerator} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execNumerator(Acl2Value x) {
        return x.numerator();
    }

    /**
     * Executes the native implementation of
     * the {@code numerator} ACL2 primitive function,
     * on a rational.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execNumerator(Acl2Rational x) {
        // it is not clear how this compares to x.numerator() in speed:
        return x.getNumerator();
    }

    /**
     * Executes the native implementation of
     * the {@code denominator} ACL2 primitive function,
     * on any value.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execDenominator(Acl2Value x) {
        return x.denominator();
    }

    /**
     * Executes the native implementation of
     * the {@code denominator} ACL2 primitive function,
     * on a rational.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Integer execDenominator(Acl2Rational x) {
        // it is not clear how this compares to x.denominator() in speed:
        return x.getDenominator();
    }

    /**
     * Executes the native implementation of
     * the {@code cons} ACL2 primitive function.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2ConsPair execCons(Acl2Value x, Acl2Value y) {
        return Acl2ConsPair.make(x, y);
    }

    /**
     * Executes the native implementation of
     * the {@code car} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Value execCar(Acl2Value x) {
        return x.car();
    }

    /**
     * Executes the native implementation of
     * the {@code cdr} ACL2 primitive function.
     *
     * @param x The actual argument to pass to the function.
     * @return The result of the function on the given argument.
     */
    public static Acl2Value execCdr(Acl2Value x) {
        return x.cdr();
    }

    /**
     * Executes the native implementation of
     * the {@code equal} ACL2 primitive function.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execEqual(Acl2Value x, Acl2Value y) {
        if (x.equals(y))
            return Acl2Symbol.T;
        else
            return Acl2Symbol.NIL;
    }

    /**
     * Executes the native implementation of
     * the {@code bad-atom<=} ACL2 primitive function.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Symbol execBadAtomLessThanOrEqualTo(Acl2Value x,
                                                          Acl2Value y) {
        return Acl2Symbol.NIL;
    }

    /**
     * Executes the native implementation of
     * the {@code if} ACL2 primitive function.
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @param z The third actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Value execIf(Acl2Value x, Acl2Value y, Acl2Value z) {
        if (x.equals(Acl2Symbol.NIL))
            return z;
        else
            return y;
    }

    /**
     * Executes the native implementation of
     * the {@code or} ACL2 "pseudo-function".
     *
     * @param x The first actual argument to pass to the function.
     * @param y The second actual argument to pass to the function.
     * @return The result of the function on the given arguments.
     */
    public static Acl2Value execOr(Acl2Value x, Acl2Value y) {
        if (x.equals(Acl2Symbol.NIL))
            return y;
        else
            return x;
    }

}
