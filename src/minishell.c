/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ldatilio <ldatilio@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/06 01:07:45 by ldatilio          #+#    #+#             */
/*   Updated: 2022/05/08 19:59:48 by ldatilio         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"

char *get_prompt()
{
	char	*prompt;

	prompt = "\033[03;31mmini\033[01;31mHell\033[0;m 🔥 ";
	return (prompt);
}

int main()
{
	char	*prompt;
	char	*line;
	
	prompt = get_prompt();
	while (1)
	{
		line = readline(prompt);
		if (*line != 0)
			add_history(line);
	}
	return (0);
}
