Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC8049C7C
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 10:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axxsQpdq10aZvHUvPuQ+D7Pss7efklA90nkl4N03JJs=; b=NDMqaH2xGl+Bvd
	8cyWLFWp0Z3EoGGUf8Wvcn+gjr3nUBGSnxTzj4FcV5amCL8XQmmcFVEqmDcdG2nDcoEe7Ue9ffq3+
	j1gKxTLi5aSTZjvnM+NBuD91hnTv9F2kh7+eV1l829idydiMGkKkNoeyH+oR4RXgzVv728PICx2fZ
	Blsz0yV55FLJWCHLflEFQRkmeZVZ++LM14ghytndOWXmHUgp1l4Ya3hK9D6e8AIncBz4zTnninlTt
	aIPyYpQ3w+sru5Dhjyv4BXt028oeTOwfkuRYHwaGppjn1xiAP3twJPT7vQN1nt7P2fW60SuKwkknu
	eKTINzzg2yWagFZi0AIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9w7-0006Pg-HN; Tue, 18 Jun 2019 08:57:51 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9w3-0006P0-Ke
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 08:57:50 +0000
Received: by mail-io1-xd44.google.com with SMTP id u19so27925624ior.9
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 01:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RUdoHONh1gw4fZkON8xhJK/c3Epm99oiXKdYUCFM9TY=;
 b=dPW5TL4aXlEqEV/DYOHZTPfDCy/a8Tz4RY5DT7RZMKtVOyVSZD7uoQ6fYvowTA/XUd
 R9qBNW37zi7RzhpS8yB5sHMtvJZRKP56zp/wfV3YJfLNr9sZ9wdAav4dh/1vhffEFtFp
 K4M/sKKKlBUlmX6rXoXIE1llLJWW/N1SLjLNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RUdoHONh1gw4fZkON8xhJK/c3Epm99oiXKdYUCFM9TY=;
 b=tuoAosWCibs1USjh8bA/Sud8QbXh42qBPTQgA7XDHC3IpErxqL22fxrZUVz/4miKEL
 hlwpxiDVtpAbgOixbXKNkQ0kd1FHyGL8pOFnQWtvFR52haorJ828RjmqJrO2UVaYpSQL
 JnnUDGebFribZUHH1yi43xr7XkOpEHgRfY8oCIvcoTPlda+QTulKoMp0kPpidwdqJTS+
 SMaeEGxXX1UzA4ewXcvpZ5n9lhI4Ik1tFtE/ZUB3u3KD7u5wMkpvGPUVO85tlaM8z4MV
 wCJ2t9Rk6t8PFXaKg6PjMC1dr5FOIp/jFGHwatcUnuF0Iyoats1vYmcl6dUDoq8MSFKk
 qnRA==
X-Gm-Message-State: APjAAAUNE4gvlUw+xDiuahHA4+fYKkeaBR1qXxZ2JNN3aMBaRqdmtf4v
 y6KOkuoq0K6fQWdJ3k+pKxFQz0HKtQP0UX/Ft/Sc9A==
X-Google-Smtp-Source: APXvYqyQKUYV++CrkzyGlAS5CjujlUQJQjnUupwlxP5VbrF2w7P9WoQ/Dyy+VayXDkLnxO70irdDNsmHcfvoWLW6kIw=
X-Received: by 2002:a5e:8618:: with SMTP id z24mr4539081ioj.174.1560848266285; 
 Tue, 18 Jun 2019 01:57:46 -0700 (PDT)
MIME-Version: 1.0
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
In-Reply-To: <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 14:27:35 +0530
Message-ID: <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_015748_983452_B1F1780B 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 nick@khadas.com, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Nick Xie <xieqinick@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Mon, 2019-06-17 at 15:24 +0800, xieqinick@gmail.com wrote:
> > From: Nick Xie <nick@khadas.com>
>
> Was this tested with SPL support? I don't see DRAM configuration here
> so it seems that it relies on the non-free rockchip loader.
>
> If that is the case, could you please indicate that in the commit
> message?
>
> To maintainers: please do not merge this series before DRAM init and
> SPL support is available for these boards.
>
> It seems that other RK3399 boards were merged without SPL support and
> sofar, I have the feeling that nobody cared to explain how we got into
> this broken situation. Please don't merge any more such board.

fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were merged
with TPL-enabled (which was discussed on the threads, if you remember)
with below boot chain.

rkbin (TPL) -> SPL -> U-Boot proper

Same case for this board as well.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
