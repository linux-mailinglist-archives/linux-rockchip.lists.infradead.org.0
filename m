Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C541BAD51
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 20:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8P9Sn8ByJNLcPoug5JwSyFpjQf3h9Vs6+ZJxBtDChhE=; b=ijVM1oeSF8NUDr
	IEd4wlwatcHCzLgwPWdYmKoLvqxvMpn6Nlyy5BoenjSiWCUYCV1boyCo2Uabimg07CMYcVo0JIDHX
	nOqr/ldOYYzXuBos35ZUtdVcph/d5s0QXIAqbF8z/1DZtIxcLkv9gOPIlfeNfRhpzfZ4dLhp8MOlf
	sq5PS68JiMquTEQLx19+JtKR9OjA4YfFNxC67g+c8kp5/9n7oFUu4aXsU+n4ESMS3NGjQWJdBYeG2
	yeQn9YlOlNSeW+xjfCD55oSuYPqeImH78Uc+unauZmmeB/jgHqQj4A9bACuk4uAyy/B8e+rOZrYFg
	XUzXc3ymHpqN0Q4WXtVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8vd-0008MP-8V; Mon, 27 Apr 2020 18:56:29 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8vY-0008Kl-CE
 for linux-rockchip@lists.infradead.org; Mon, 27 Apr 2020 18:56:26 +0000
Received: by mail-il1-x141.google.com with SMTP id i16so17773370ils.12
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2020 11:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zqkytQuRqbdyIv1fNw/hFQaHmYGu4kuwrAG4aDt0KwY=;
 b=saJPBmpcSFa8Gvk3fcBP7BcUJ0vdCttdE09MxHpW/uEu9CFjYVwWXKpV1EEM1mB0F7
 JFDFlfW7lrpuG4de/SsT3EJ0es11Ti+ZJc0tiVi4/T1IGbRrXFDHmF+ZBdm2NQpDv+l/
 13SOK6VVfaa+9DkL0COKwTrTcbC+UbULtctB/kvHH/4EyfpJ2bzBsFPAfxyKaZPfVVPZ
 99EVOEKR3i+w77aASsepR7u7Nehl5B2fz4pKmrvxFgFGw/sFvtRkOyA1xtQLbHDsVofz
 ZWeEKbLSdxqY4wWZOF9EMA0Xvh1Uls9FM+b+kXBa5SgpwKJun8A+woBS0WAllujr8kAF
 QlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zqkytQuRqbdyIv1fNw/hFQaHmYGu4kuwrAG4aDt0KwY=;
 b=VyleEtpYp038b4L0zmz0TiglhAy4IcTgYClwDOGTz0vAYll8feBzPxqC+WfoknzEZP
 AFFpCd2rhLoKspuR6UTSFQ/NlaFUbM6IMd0Sc70EkiN7yZkq2ax+qxKjud25NiFz3+RR
 swg6llHBKouPmIEC6bUOGOMIlfp6FwwOS88ppAeGD28pzNq8/BMlfr1glaPw8tIDphsY
 YRv/FLp6cLxeQlQDZf7JhAQAOOHW3fDxXNvPgrA6ocXsEmdJ3+iWVLGxWxqEwlPV5tp7
 7dd38ShYLJQX+Ip3uooBwDUKh0ZpfEvqDrSy7SOtSi/9knEiPnI5qlr4N+91ZQxKwNP5
 8VHA==
X-Gm-Message-State: AGi0PuYKQPNOm45DmUpCEVpfXTgRKtVymFTW+DIlYm9Pp2WQ6JsyvFlr
 ctvFcdZljfU+/deJMJkLnvuiXNYN0hRDDJqBAG8=
X-Google-Smtp-Source: APiQypKSjWUNccvaGaP7GIFyMyjBa2ylFPQ2+a7hXLOAZWmMk7LFoZjV2MZ6L0j5XxwlwKRKShuLGc74DMMUsDsJ/v4=
X-Received: by 2002:a92:8587:: with SMTP id f129mr22745284ilh.75.1588013783349; 
 Mon, 27 Apr 2020 11:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1578789410.git.robin.murphy@arm.com>
 <CANAwSgSFPtdvEvacNf6DhzE2fCabgZSBNnZUf0+nQErDWpErOw@mail.gmail.com>
 <c7345431-7585-6052-835e-d9c292978b6e@web.de>
In-Reply-To: <c7345431-7585-6052-835e-d9c292978b6e@web.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 28 Apr 2020 00:26:12 +0530
Message-ID: <CANAwSgQsMnkRyLCbgbWUGnCOzeK+4rucdMCkBGrv=Gp=Etq5JA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_115624_440066_5CB6D8CD 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Soeren

On Tue, 28 Apr 2020 at 00:16, Soeren Moch <smoch@web.de> wrote:
>
>
>
> On 27.04.20 20:41, Anand Moon wrote:
> > Hi Robin,
> >
> > On Sun, 12 Jan 2020 at 07:25, Robin Murphy <robin.murphy@arm.com> wrote:
> >> Hi all,
> >>
> >> Here's a second crack at my RK805-inspired cleanup. There was a bit
> >> of debate around v1[1], but it seems like we're now all happy that this
> >> is a reasonable way to go. For clarity I decided to include Soeren's
> >> patch as #1/5, but since I've rewritten most of my patches I've not
> >> included the tested-by tags.
> >>
> >> Robin.
> >>
> > Can you re-spin this series, it seem these patches are lost.
> >
> These patches are already merged as
> d8f083a302f7..42679765faf2
>
> Soeren

Thanks for the input.

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
