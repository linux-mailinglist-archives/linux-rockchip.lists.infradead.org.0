Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E023428F15
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 May 2019 04:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxdhuuvLMX7BLm0TuAzGS+eyZnDFa6dLkawrZSlN/yE=; b=r8L96R9PABhlA+
	6HxlfJWMPRbzfsy5ZQdcfYLQj3Vj4owcPXiDBTewC05ugxHK9R/+8Onaiksk7/DYhTRv5wasZMK/Q
	yZmj//yc7PwzBCXhhaPikRAtsA0oXQ0GlPtbjP2EMm74q/4/oi1OJS2yjrBNcOGr9PVJHPkTBePwx
	W0dSmg2gk7jnaYxKZiDOD7WBl54o5ba+N7AWK2vT44yhaXzFtPuUavmywpx4tuvCy88amxW/3cioU
	g57o1SlomgVyATOQ69dnBS2uXIYco0kghxCl9DN/KzhnJJ43v1xobZOgbUoplzTrKe0SAD9kJW7YT
	bLqRq4epTXg3dPO9OwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzpC-0001h9-GW; Fri, 24 May 2019 02:20:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzp9-0001gW-HL
 for linux-rockchip@lists.infradead.org; Fri, 24 May 2019 02:20:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so3501242plm.6
 for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2019 19:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8i6sdY7hQZvF0VE8bmdd+Eg6UX6pwW91eLCHd9wKizE=;
 b=cOX4GWm3SirJ0mfbzCgcw3AZqCJyholEQXV89WdBtgj14h6xZwMLjcZuoFGQqzIlBc
 d7tV/mEa2ulUXk9lU9t627pEmV9b/Xj0QFNnbi7vxGBTooW8bIuHGDXcevIn+sUypy9n
 ApLEVHIocW/Vn9FhI5Jjw80Cmr3T3y+dH4turBtTPjLJ2OmZ3nno5mdLJy9F56XxMZb0
 CgWolSYYG87kk8MnQdVuxeZQmDYfsmMEdBvpDgIHVrlSAItDAyhosEqq23ag8Ql9wIn9
 aIHLZMXNHeoafO/9zUYUbXIOT1EkcamcX3Uyt7zMMrITCgTq3e3b+XGgLcjvsgKT6F1o
 D/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8i6sdY7hQZvF0VE8bmdd+Eg6UX6pwW91eLCHd9wKizE=;
 b=r7X9G6Z/8eg8vJeu9hLUTF3CMTai9OTgQiw1w3KJrBd2Bvy2tQfncBtYA2HUhTGmkb
 FDz7wdf6E0UTorRpFr/Fn1E+sGlc25kHOLgqWXbmnvNcFWDktzZIlO7xriUkX5cABBYs
 iR/DbPZCYZ5mAa/LweteBFCnfAhY272n4s7o0Twm9w9sEXaGG0Fc8FOrgQ6U8Bw0izhP
 1fj14G0NVjv0F1Td8IkLnyBN0NIE4pC3Niv91pBXd1D5JjXrVFu7v3lIRH3zpD6bQ6Wv
 HfdmXgMosG7taHtAyRa8XCuDwhsZ1EO031oEV8xWFO1FvWd/3bNLPgtpQmzNaFOakD0s
 WmPg==
X-Gm-Message-State: APjAAAV9WrqyvJu1ykI+fVUF7zPnxJ64UjdOPtgdLMd4ancSGKWJerGw
 1X4D6eIFAeYTl30m36XE/2JTpRUz
X-Google-Smtp-Source: APXvYqy8IsUKhin/UgEK4yCtU0skPkff11e+FW8nFuiATBxaJlXG+/rqhfIN5xqSVctGKNxteeaTdA==
X-Received: by 2002:a17:902:a407:: with SMTP id
 p7mr12856160plq.41.1558664446375; 
 Thu, 23 May 2019 19:20:46 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id c23sm880199pfp.0.2019.05.23.19.20.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 19:20:45 -0700 (PDT)
Date: Thu, 23 May 2019 19:20:43 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Doug Anderson <dianders@chromium.org>,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH] Revert "thermal: rockchip: fix up the tsadc pinctrl
 setting error"
Message-ID: <20190524022042.GA1936@localhost.localdomain>
References: <20190522141236.26987-1-heiko@sntech.de>
 <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_192047_570784_F848ECDC 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: zhangqing <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Linux PM <linux-pm@vger.kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 08:34:34AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 22, 2019 at 7:12 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > This reverts commit 28694e009e512451ead5519dd801f9869acb1f60.
> >
> > The commit causes multiple issues in that:
> > - the added call to ->control does potentially run unclocked
> >   causing a hang of the machine
> > - the added pinctrl-states are undocumented in the binding
> > - the added pinctrl-states are not backwards compatible, breaking
> >   old devicetrees.
> >
> > Fixes: 28694e009e51 ("thermal: rockchip: fix up the tsadc pinctrl setting error")
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  drivers/thermal/rockchip_thermal.c | 36 +++---------------------------
> >  1 file changed, 3 insertions(+), 33 deletions(-)
> 
> In case it helps with the urgency, there are lots of people who have
> all independently needed to identify which commit stopped their boards
> from booting mainline or broke temperature reading.  I'm aware of at
> least these reports:
> 
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Enric Balletbo Serra <eballetbo@gmail.com>
> Reported-by: Vicente Bergas <vicencb@gmail.com>
> Reported-by: Jack Mitchell <ml@embed.me.uk>
> Reported-by: Douglas Anderson <dianders@chromium.org>
> 
> I can confirm that my board boots again after this revert, thus:
> 
> Tested-by: Douglas Anderson <dianders@chromium.org>

I see. I can collect this revert if that is what unblocks you guys.

Elaine, do you mind checking why these pinctrl changes are causing
boot issues?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
