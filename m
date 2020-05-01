Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB021C187A
	for <lists+linux-rockchip@lfdr.de>; Fri,  1 May 2020 16:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3j+WHk9ArWQJsCRPiZv7rU4zS7uGtfAUKUAGQDVhZE=; b=pUsaCnG/o4gDVX
	WdBU1suZ2yn+YzAGVppKDzxv4d4dzkAU9eCvQCvWO4+PgJ3CQ4dgurl8kYzlEomXzbJNuCjLnAgqO
	dJUm0n/l4S/MeOxZpg7kEThsSEEeWJPls7nMk9r4b5xWNcKug+wG2qCKQGu9tG65hdhvVqh36HE/1
	FzAjZY+dEihvplddUmvg+f6Ty6mn/jaIn8tK64kxlLmEA5d7KH9+tUbuWo2GwTCgncV/7lmjdBTu1
	qXnRkv7bHZvuEsaHCS51V094oe++hgIi5dC2OEEyQ005VR6MzaTXxPcG7uWWXvcBgKCnZziocTGhR
	dQh7SRrYpJOWiU7G3mLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUX1i-0001cs-Mp; Fri, 01 May 2020 14:52:30 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUX1f-0001av-91
 for linux-rockchip@lists.infradead.org; Fri, 01 May 2020 14:52:28 +0000
Received: by mail-ej1-x643.google.com with SMTP id nv1so7680824ejb.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2020 07:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vCHQL3n4jfZ9Vf3RXcUbE7Z/BOL1aO32uZ2WexBBcaM=;
 b=A+YyQQLDI25tiE+w1fnnfnhkUGrRYEMhGZLCin/TFSki+L3I2rwndOtuXcCPLvHcM+
 2QkTHBwzYU2kpvKLDL8PbmhcVS2Re4OwOsx4o2TvbKTo7ipB8AyNVz8lRPifTigisvrQ
 EMmI3psFLVnrKmvoQy6XQVkepl6GIH+ZyB5/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vCHQL3n4jfZ9Vf3RXcUbE7Z/BOL1aO32uZ2WexBBcaM=;
 b=elR5FgdZwBUr5ceVrH3wYImXzLreRyQ0Zh5RjeXRfz2aUoKr93E5dEv089PrbGnYKY
 fcBBmsnmo+MFwT0d2pgidNfjCoGuiBIM/b5Am6Qc8DMVdH4MuZYWu0HZEwwqFI3dftxS
 VYwhjCF9nl8MKGGg80X711JRySZuysgld0NWdnd+1G6kZv40edqzAZUYthScThBIHTz+
 hRgNhia397qRh9wIQ2R+/vhh7YhqwvYWt6n4YOWtpj8VuIeRv4c22ahzd9AlHaw2LzhU
 QZJZ+iFxjFDNbAioPpuVYOMS57TaPUdRdgggesKz/GTnZ5beiXHhi11Fhg7C+7ab7DRw
 PEEw==
X-Gm-Message-State: AGi0PuZNNZ8+iWgRtPcjkVTFc2Zi8SicBRVVKseevzOZLlTVvlKuriN5
 gw4pLIbpC1+VQufxlmWVYZBT/sNNOWQpdwM9jCPbZg==
X-Google-Smtp-Source: APiQypJ9Rov83L3UaUIIM78dftECLYnyyIpKaLPYRnYiJFyFzrCWt6yWIz9pmNVCsu80s5XZLvt7oufKMjxW/RxeRlI=
X-Received: by 2002:a17:906:7717:: with SMTP id
 q23mr3599644ejm.38.1588344745092; 
 Fri, 01 May 2020 07:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
 <20200430144628.GU4468@bill-the-cat>
 <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
 <20200430220644.GC4468@bill-the-cat>
In-Reply-To: <20200430220644.GC4468@bill-the-cat>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 1 May 2020 20:22:13 +0530
Message-ID: <CAMty3ZD91SkrjQFLtC6zkrP7YTyH=UMwFx=4_SraTvwjVu9HCA@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_075227_465753_5698D6B1 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 1, 2020 at 3:36 AM Tom Rini <trini@konsulko.com> wrote:
>
> On Fri, May 01, 2020 at 02:33:17AM +0530, Jagan Teki wrote:
> > On Thu, Apr 30, 2020 at 8:16 PM Tom Rini <trini@konsulko.com> wrote:
> > >
> > > On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:
> > >
> > > > Some drivers and other bsp code not only poll the
> > > > register with timeout but also required to delay
> > > > on each transaction.
> > > >
> > > > This patch add that requirement by adding sleep_us
> > > > variable so-that read_poll_timeout now support
> > > > delay as well.
> > > >
> > > > Cc: Tom Rini <trini@konsulko.com>
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > This (and 2/8) need to say what kernel commit you're taking this from,
> > > thanks.
> >
> > Linux supports sleep_us at the beginning where read_poll_timeout
> > supports, i.e. the reason I didn't add the sha1. If that works, I will
> > add the same sha1 and apply via my tree (since it has some SPI changes
> > dependency patch)?
>
> Yes, I think that sounds right, thanks!

Applied 1/8 and 2/8 to u-boot-spi/master

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
