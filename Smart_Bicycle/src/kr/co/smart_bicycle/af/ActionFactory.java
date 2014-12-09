package kr.co.smart_bicycle.af;

import kr.co.smart_bicycle.at.Action;
import kr.co.smart_bicycle.at.RegisterMemberAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);

		if (command.equals("register_member")) {
			action = new RegisterMemberAction();
		}

		return action;
	}

}
