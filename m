Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A77D43300
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 08:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/YLQ1rqMgfiQ+HTuTnGolzELWme6wVBIXnANR5uaqk=; b=NQzsBnfGWZJRrX
	Bh9/W6johZdFr03vNL0vKhO/FUjFYDAaEjlh3kRSIJLWmsWnOTSyuu/4yZouc1SlnyukxopnGQftf
	416orPwPzmjjDIytXwCTTTfSf6+CWloMIrdgHvR1XMLXL6TX0cvXiu1GUp97no7As0MfBKaqM87/z
	p9nw5/deU4KOiSNbu/K0l4pGjiR+WJxFSrEwB+Svf8+vDBTT6YP6XYRzMyhfGCrLnjO98FrsIYeJQ
	WaXmCs3VracORPoJqnI097ifuDpG02dE/RTDGbuT0Mgtg8u+3ZvspGjDv93BBGCsLplzk8A0ZMxi3
	l5WsNWEbAlzCAPQtQ2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJc9-0003sL-2R; Thu, 13 Jun 2019 06:53:37 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJc5-0003rh-4p
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 06:53:34 +0000
Received: by mail-it1-x143.google.com with SMTP id n189so14677545itd.0
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 23:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WorR305hutHRs9cYwNsY7saPqYbk6VXmRMDUuKOm2tw=;
 b=SLWm/dt7iY1dxX0ULRFMsT6gE2g7G5HXRDCsC2/OnpYaminvVFGdYl69F1UFGvwtxY
 78NJquwkWc5fPBBxgOmDnM7ZxpaoXUZYEhEjZGEn4iq4fSKT2C122yTP8+l0R/yOmWv0
 knV4f71R/HHXjqSdXExO1GUUu794+MSI2nqNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WorR305hutHRs9cYwNsY7saPqYbk6VXmRMDUuKOm2tw=;
 b=FwoswYBSkdWpq/AFDBM/R0h74SnnHP13GJ2a8KDR0U+6fXgf46cFZiTEuetzr2LCE+
 +VLWrZDaQaL71eZ9lzN6GhRcuSSX+ZXm0IMpJI8VZSClFGU1zNd3Kimgx6RJSn2J+5TG
 ZABjRQWV+kIpLutzENZMvvXCuS2MuQm6K4MYbGf1n2eOSXCkyojfGP/djj8XYwBOTWjB
 +h9SDlPaBX6qY3IlxZfz92CJGRoToTfQblEls+sXZyr8UG5DwPGwomqxvDq6w8FfAQBT
 4YqvhJfPa5it9WwxwlR1kQhzMydUPhSIZuhtdPfakQFG5cwVzSwYqeC3JWQwwFW/m3kD
 jbUg==
X-Gm-Message-State: APjAAAVaqH5zjLYiD57qnROByaZHIKawuPSUdhr/8o6JUTt244Keuszb
 UyndqlIdtO5O6XTm8seHluH9hRK4+6dlym7NnUwblA==
X-Google-Smtp-Source: APXvYqxWwSUbU/ibwBBH6UGlIEKpBtlO4xRUtQ3lwnORwcbbIh5xdbYnsJlPOiZ2ObVRnu6RhPKPPh8WcSq3pjtdBjM=
X-Received: by 2002:a05:6638:5:: with SMTP id z5mr15645006jao.58.1560408811235; 
 Wed, 12 Jun 2019 23:53:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
In-Reply-To: <20190507185215.15441-1-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 13 Jun 2019 12:23:19 +0530
Message-ID: <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as BUILD_TARGET
To: Simon Glass <sjg@chromium.org>, 
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, 
 Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_235333_344842_7C58C868 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Wed, May 8, 2019 at 12:23 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> RK3399 TPL changes are merged recently which I was thinking
> of waiting for next MW. so this series skip binman changes
> from previous version[1] and have only BUILD_TARGET changes.
>
> BINMAN changes would need another rework, where we need to consider
> the TPL image as well and that would send separately.
>
> CHanges for v3:
> - skip binman changes
> - rebase on u-boot-rockchip/master
>
> [1] https://patchwork.ozlabs.org/cover/1092198/
>
> Jagan Teki (6):
>   Makefile: clean image.map
>   Makefile: clean bl31_*.bin
>   travis.yml: Add pyelftools install entry
>   rockchip: rk3399: Get bl31.elf via BL31
>   board: puma: Get bl31.bin via BL31 and rk3399m0.bin via PMUM0
>   Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip

I think you hold for this with puma changes? any further comments
please let me know.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
