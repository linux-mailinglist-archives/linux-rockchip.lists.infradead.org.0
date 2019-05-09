Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF47C18878
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 12:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIE8Ni0IXfwMyk2Ftq38FDPk97/OuJX3bQ5E5fJ74ik=; b=dtH4jxa0i2ZHUU
	OwNnKRzyzay0x94b400Fmg+41dbISkibJ3Lk0E98L9saXBUjE2UZSI95m5k1/jOP2Bw9DXKEJ9ayv
	tSX7521gKNeb4+3nyzOafwX0kkL5rL3pTksaGFgC3MJXnjxDHX1vwqPJzx5YcG7+Rv+KhS+ZpJo0g
	Oi518HSdNNiywKs3JQmzDkOYXGpQU/E/0ym5wtBPIAJlNyF0QoWdVscnejU43LOjOd+LKJFSK8YPV
	tRc8IUsVCaACcNQCG2uJ6UuAcCefDuQ4y1vFD7aKu28lOt1nXwlsUrqLMUzUR3RMi9nrw1xD1e5lH
	NN7znXtf71NVbYlNFsRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgYC-0008QV-De; Thu, 09 May 2019 10:45:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgY7-0008Q4-Gw
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 10:45:17 +0000
Received: by mail-io1-xd44.google.com with SMTP id m7so1225621ioa.6
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 03:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5JTqvxYKL1uyUfPkEq5uthDKLJroVGufB/313rY0Qqs=;
 b=QUJybTVfnrEsAcKVSEiqF7FKEjXqm9otqyMyG/Ju5QIn+SvjLfZZkfpzZlamd+Uefb
 JbEra2J4vXEAESsVaUIiIuM0wuY8YSET0xccl7/MDKygA+leM2rWqC+U8dTczWxII+6x
 cGzSu+8T6TCpl0oK1hq7vpafocOpcnx0uJB4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5JTqvxYKL1uyUfPkEq5uthDKLJroVGufB/313rY0Qqs=;
 b=sJ5iLZE50W834F/MntznSWGSIZ/fhRrnl/I7i9OW3mO57fK1UoN+L71XFg+H1mbIqO
 iywHjzv+A9j/qjSxRhOKy4/ZItDNrHY5CRjBMDfNLWbxKbAAutUX51CUNLl8/rU4IXRJ
 w0Q9qyMjaaqETpQOZDmq3z+YMmS4O3pr4N+GmIoonL2rfYp1C/tJU6qJ86z8iNZeWxqf
 zK0Zkxs99b1HGHb5mS/RAhPrzGdSg/EgCP9LLUCLQMDd7UTNLcRaZdFWa+uTBnTSpdta
 FRO9sg04PlNO0IuJBvE/zHQ54dbJWGdPSgkAWVZ1I/HDdmNKmiNrbd1JC+UbJ/DraWG7
 z3NA==
X-Gm-Message-State: APjAAAUAsvPvn6b/065Wo0t0n1M3nYQutIXAmlcWp1wML4Oez73vsX/s
 5H5DtlGUvgQzQ2++61MzBJrremQGKNfaVdmWCmSYRQ==
X-Google-Smtp-Source: APXvYqynDJ82z3hau8I3WVhtSJ+hwi6g2ICR1LSCDimLp/A8kH1kXtO3uWrocAj77MygH9FYYbU4dXoXgpV1WboKzi4=
X-Received: by 2002:a6b:bb82:: with SMTP id l124mr2144381iof.252.1557398714186; 
 Thu, 09 May 2019 03:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
In-Reply-To: <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 9 May 2019 16:15:02 +0530
Message-ID: <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_034516_017539_747560F5 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Paul,

On Thu, May 9, 2019 at 12:38 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> > (Sorry for the noice, I have missed to send two patches from v7)
> >
> > This is v7 resend patchset for New rk3399 boards support wrt previous
> > version[1]
> >
> > Unfortunately initial version of creating rk3399-u-boot.dtsi and
> > orangepi rk3399 changes are merged, so this is rework on top of
> > u-boot-rockchip/master.
> >
> > Overall this series add support below rk3399 boards
> > - NanoPI M4
> > - NanoPC T4
> > - NanoPI NEO4
> > - Orangepi RK3399
> > - Rock PI 4
> > - Rockpro64
> >
> > All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> > dts(i) from linux-next.
> >
> > SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> > series [3].
> >
> > Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> > booting via Rockchip miniloader as of now.
>
> Could you send these two boards in a separate series so that we avoid
> merging them for now (because SPL support is broken) and then re-
> iterate the series later with the DDR bringup? Or maybe find a way to
> disable SPL support, but in any case, it's not ok to merge a board with
> SPL enabled and broken.

I have explained the details about this concern on v2 [1], thought you
would comeback on the same line instead here.

Anyway, making SPL as an optional is not an idea to go with Mainline
as we make many decisions with regards to make SPL is mandatory.
Since the DDR is show stopper here (and it would really need a good
amount of time, since it effect the other boards), I can go with TPL
enabled boot-chain where ddr bin, SPL and U-Boot proper can be part of
booting stages. This way we can avoid skipping SPL usage, and many
config changes to make SPL optional.

[1] https://patchwork.ozlabs.org/cover/1086213/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
