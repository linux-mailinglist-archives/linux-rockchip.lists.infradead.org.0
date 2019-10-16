Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B68FD9144
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 14:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QwvxJiUvBD/mxhDOj03Wf3wZhd6ies9Lbz9ZhMVNUw=; b=Y0BnPniOTUn5F7
	dFQJVbtC3BB9Cy2JY/vk/qPWDVFXgzTnmau2x3CapiTyY55TM8rJldv2BRiyQ30jiuaonqpvFZK7w
	X34/Z4hrfJhkyqdugJDc4eJ9yw4E76okrfLhZFECmU380B+KamOWvSyEwFeSuG2F8TrhzA/ODs0zD
	ClUo9ZtkcUlfWD5AHAtSKQQ+kikGDBr4ve1pZ35VVTRXdJEY2GETIh9qAsD5iQcgArHBvI6SFZM2U
	k34eMIg/WDmGRhwsj2OQuFgVdeD89JHrrtYkZpjzK8fjr166ZkGiHr6i8grFZstqYmZOcS0wuCCRA
	pv/ZBxTVGe3TACFGi8cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKifk-0003WI-Ra; Wed, 16 Oct 2019 12:45:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKifZ-0003Nb-UL
 for linux-rockchip@lists.infradead.org; Wed, 16 Oct 2019 12:44:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id 4so22561259qki.6
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 05:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4K7B+uLfKEBGyGYLI2L9ifLhMu932uDK9Ftu5vsTLNM=;
 b=TdEFBc1a1GhmOYAW2VtSm1o1gnQZkZwCc844SMM9XvDj5O96l/doIHiYscKqhjxk8c
 uunW6zvZyzSv90+FN0ByJ81MsiIQ+EdX1idYLnIEfIH29ecKHXYSLlWeO0rSBlRw30zJ
 xk43RxIDcXygry3uhKq1xbOt6FK7sHVII7pGy//MlKP4rMGy9xMxxjEdj/9VUV4RZPZx
 Yr/uPni/tyEG2zRjgof177N3oFQ4bX8meJn/QWXrdELUf0J8ypfwOa3ne05f1/BWGGMg
 WgQHfe13moWhf+DxVSs2o4pqtcK49LvS5YhXM0ILQv39atV1VQ088PQtUKIm821tofwL
 yYZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4K7B+uLfKEBGyGYLI2L9ifLhMu932uDK9Ftu5vsTLNM=;
 b=Wh+MES94XNnm+Dp7ED37BkfL/9tL6IXI24uah5E3C84W2sKL7E0fU7fUzBMKFgMuTW
 Kwva4bmQMOjinZwszy6DOBfEt6bEDPltraqDP/Num98QbXIPOU6zE+LZAz7s07+7JrBu
 L/nid9EX+Zh80uVeQ0Fms5w9A8ZVkd+BjV93jGWUT57ndkSQT5W9oZLvlxNFd7zZim2H
 3nVBjWn99O8gg24ZSFqeAtlxRhO7WyPAGEjwJRNSZfFLwjkO9pApmpoSzqGQjNsdw2ut
 YBu01UV8OBGEQ89aXys06VG1e75HeOWStXgna6JfxTQICCoC99nnzd/sC9JTiaZlL+HF
 l5kQ==
X-Gm-Message-State: APjAAAVjCdMRqrZIJnh4ZbvmCmv5037yf9fI2ZhnXdSjZTVgI3qOAWYg
 JZB2zZc3Hy/Ud8JwLLZkfEdbcE07OOOjl6Pa/D7XJA==
X-Google-Smtp-Source: APXvYqwTM8BkVjUwYymUoCEI4D83P7/A66wqA+dK+mNJipK7M/FV7PxzP6J1Gjw69MjqnyvjKRuCo11TD2KiTz+ravM=
X-Received: by 2002:a37:bf02:: with SMTP id p2mr41057686qkf.42.1571229889157; 
 Wed, 16 Oct 2019 05:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191015091708.7934-1-jay.xu@rock-chips.com>
 <20191015091708.7934-2-jay.xu@rock-chips.com>
In-Reply-To: <20191015091708.7934-2-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:44:37 +0200
Message-ID: <CACRpkda+gVxBHU=UZTqfgasOYKpGJ4QSp07-TH-QrTQ7Urm5DA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: pinctrl: rockchip: add rk3308 SoC
 support
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054450_013819_CAE0C899 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:17 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Add rk3308 SoC support to rockchip pinctrl.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
