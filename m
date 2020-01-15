Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39EF13C1B0
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 13:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m46ENiOxCLx3RFOcW2JjPOpu4SPyETEiXQ/+gsDXTkI=; b=dRAmOKOTDsjKBj
	Uz8yT44NUBCVoaKdIxN8ix3f+bZFmFHQIjNMQaAnEo6dgPs75wX/BqSkbaG+o0E6iIuWzQRJoOUmK
	HStIZnISzuIqVah1+WntGx8kaJ/wlIPDba59bxjNHwQ3h8uYTacYndVaAWQauWxUI2kVDhWCGvOtt
	ANSAWzacC/hOqQKqX8vE9eyb8aP2DX/cAoHqxhkMWN+8c71RqiUz+TARkM8ds8VTICi9mNdMgbijy
	ICOHTJ3am3M7M8L/VkRRA3bn/3SF6eFFd4cI3SWJ3tMYzETLFH/ZvddgSCObRycxyy6ibMf3SQMha
	liZdtbJM2ISNMdF3piCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iri9M-0004uc-1g; Wed, 15 Jan 2020 12:51:56 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iri9J-0004ty-Tp
 for linux-rockchip@lists.infradead.org; Wed, 15 Jan 2020 12:51:55 +0000
Received: by mail-lj1-x244.google.com with SMTP id r19so18431185ljg.3
 for <linux-rockchip@lists.infradead.org>; Wed, 15 Jan 2020 04:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hsr/oi2XrIAmmbP163wTd/MCf3p12+DUNarrq/kg9sg=;
 b=xrzSeApfEb6DAeNeLYgX7j/LWntJQinaR4oIz/1UnnXu31QZuRkQ52mokkML3w8Th9
 JVP9mym3jJOxZFbTcKpBGqRYr07Rpg9oPhhSDckVL4EsjgxxDh3/hXwjCGteoDMIefKA
 pGfIEuCLB/Df5dpac286FNC1PHf+NkSl4HINYNkXJoeMO1uHTz3tJDmGOEgQK7sWlVFT
 ZK1UkQu6k8Soyq9q4i3Tp0N1aKP6UvvuGZA1nesiRI8PNDriNECKpTDTkV+Fu4NA2NXU
 fRjEYbkMP1JDI+CdFPuSoCJYALL41ulOLRNW6lpUezYXwr3DYKnTfd5SOPcPXzBJFDnV
 cl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hsr/oi2XrIAmmbP163wTd/MCf3p12+DUNarrq/kg9sg=;
 b=NS2VbUVjFvoX4GgutUBXgpUDiHXCutDw+Ood8ULEkOTPw3dsTnU4lHz+v1A3OQsnbK
 DalWnBYhJlU+eGyEgQrmMX7lDIkMtXYKySOGEV0HrsY5xlgxrksjcPvpT9ZCybOkKQQ2
 nuQncLuHJ4erDsStJ6lRyAlmYzsDGks3a0gQhJKYVXTO1GZp+mIkigBOOL0JczmE/R6v
 3uM/bEe2BsOZ8ZGJKILDtJE/9jCEBQtrQ4xMTYFVU4+LwTJGriJOA9Ow7G5o7XFUFlXz
 P0/bIUydZ5ZRXhEEFnGzFLu/jUXyHQYsBODQdZBzYXSZYqMi+Cx703ixgasmE16xE2qd
 hn6g==
X-Gm-Message-State: APjAAAW4GmtLCxw6ljgnMgkjE3LKAOgf/4+iag+1bWbcW4CCNzCTbOC4
 FrPgxPezH1jgpxZunZ5OolIZFZwVkGEokT7dKZcEsA==
X-Google-Smtp-Source: APXvYqyPLiNMYFjq+10C4y9GPJ4omzojNt3A/uO0N7XjKPjzPb413C4mDt6k4ydemhY/RqaqtsTUqp4qjoKTT9DRbqA=
X-Received: by 2002:a05:651c:111c:: with SMTP id
 d28mr1762433ljo.32.1579092712068; 
 Wed, 15 Jan 2020 04:51:52 -0800 (PST)
MIME-Version: 1.0
References: <20200109094001.24343-1-jay.xu@rock-chips.com>
 <20200113011616.19791-1-jay.xu@rock-chips.com>
In-Reply-To: <20200113011616.19791-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2020 13:51:40 +0100
Message-ID: <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl/rockchip: splite soc data to separated driver
To: Jianqun Xu <jay.xu@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045153_971274_C4C4CFB4 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>, David Wu <david.wu@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 2:16 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> * Decrease codes of pinctrl-rockchip.c from 4,000 lines to 2000 by
> separating soc data to a new file.
>
> * Move rockchip pinctrl related struct definations to a head file.
>
> * Keep legency pinctrl-rockchip.c under driver/pinctrl but not to
> compile it, conveniently for reviewers.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

This patch looks good, two things are missing:

- Review from Heiko

- A change to MAINTAINERS so that the file pattern still
  matches

Should someone from Rockchip also sign up as comaintainer
for this driver by the way? (Though the people at Rockchip
posting patches for this seem to change a bit.)

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
