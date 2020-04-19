Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CFD1AFD45
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 21:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LK8IReRGzof3i6XJXW2zWHF4QQ3jvaLQXeB53qWAwU=; b=IaW9X4qlIG73fh
	lpzFqPNlLYBkWVn1xCHjdhDj532f8jJGansMiYJksjHb2qA2g+lAZd0H+UU5pD0MbuFhUX+MqixlN
	S6vlGl0sJx1AexHkou4dpZ9XqdLkrnJf6yGU3BPBDp2GGlymZzGFwV+1k4xprb42NpaNBiL1D4TGL
	jQXuqiC23j4L1Jw5csd7vHn55aqz2b9doqLnxje4NqVHpfTTw9X9nUTjL7w+YWyW2iq0SmFqz0Zpz
	kFSXgBvk2SfAi1gUzI7qj1aHHGRBm8kyfu9Hne6dw8bUbrXhLKnPiNAVGtpa1RPex7ylfuOwNiDBc
	iPir+RZfICb28VbjcwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQFLB-0006fy-4H; Sun, 19 Apr 2020 19:10:53 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQFL8-0006en-AE; Sun, 19 Apr 2020 19:10:51 +0000
Received: by mail-oi1-x243.google.com with SMTP id j16so6915298oih.10;
 Sun, 19 Apr 2020 12:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gED75tHRUZsoWEBmkmqXmBkA+S7n+TXCiZUX+ASdEyA=;
 b=AMF1DXFRPm9Bk2MU0CgrIARVheldiQhxEiQbB0EpUkPWCUMpk9ohQMAwbi4ShqBtdd
 p3uu4cYI/3J8aCDSkzPifeuU4v6OK9jdP63Z8MqSalHHTYcf2Ky9o9DQLxOMmLIIvgU0
 FoGFyJl3TZY7zrAU841JHbEE2tqAG1a/eAraXi9sKJpT6aDEtU/4m4OFMABqs2irQVhA
 79AVHbzXGeIeCW5I3C3GJi1F7WBCY1a1YUrVfMAz8iDc6Znpxny4sb0eTxKyZ6AY9A+8
 XzenocQ/xWKFrjh7QZ4llHhcPYnMmkxedz2lc5Cju6rY9fMqAEd3FBmoAO5FOxykeK3d
 aYwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gED75tHRUZsoWEBmkmqXmBkA+S7n+TXCiZUX+ASdEyA=;
 b=OXMm1LE4moRoX+GsnKf1Q63TQfPPxWgDzVxXjdBiz4DE3PwpVDUc1d8ton0rHd58SJ
 HhrWg5KyRgiATTIN0jNsyYLfAunmNny1ErTH3pGEhD86NxTeLTVX7pZpW4uGa7EnKGcS
 cj23YnIVBFkn7U3at5HgCjiP+Gh6iPxnjaGTd7JbSlPlHaP/Y2LHzxs2oViVZES1jdLx
 A2bNtbnGN/Qg6ZMSU4kwW5PJko76pGhFQ/Vl3wW1NeHZcRW8AP+rc0Bk5sUmzBQT2gtO
 xF6VrQ8IcVk4O9FKOKYRW1svVgIh/hrxnQ5GnaKsTgPlKmln0/BiOeO2UNAyapzPaeuP
 e+gg==
X-Gm-Message-State: AGi0PuZnqB+3rmqZhJ3SwxyOhD+E9KfISjQClKjUPOF/zUHl28e2bBik
 WuynpQeMyMf5apuMLdvEz6jF0fpWmBE3D2814S4=
X-Google-Smtp-Source: APiQypJy/sjdjUWZOujEBGWlWQXsxdIbkeokdvT3BGmONZYx9UDW/EoFLMydMrhyS4nVxPTI0l8LnJ60Q9sNUNhhjPg=
X-Received: by 2002:aca:5d83:: with SMTP id r125mr8757326oib.8.1587323448883; 
 Sun, 19 Apr 2020 12:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <1587302823-4435-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587302823-4435-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <975f3a73bb272b8276687af609cd7e592d6ba9ac.camel@perches.com>
In-Reply-To: <975f3a73bb272b8276687af609cd7e592d6ba9ac.camel@perches.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Sun, 19 Apr 2020 20:10:22 +0100
Message-ID: <CA+V-a8uADgccR7sr_Jc0t6gcwGSX5aOANF4NZeNY6ZoSaJJ4Xg@mail.gmail.com>
Subject: Re: [PATCH v8 8/8] MAINTAINERS: Add file patterns for rcar PCI device
 tree bindings
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_121050_379085_AC806E6C 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Joe,

On Sun, Apr 19, 2020 at 5:38 PM Joe Perches <joe@perches.com> wrote:
>
> On Sun, 2020-04-19 at 14:27 +0100, Lad Prabhakar wrote:
> > Add file pattern entry for rcar PCI devicetree binding, so that when
> > people run ./scripts/get_maintainer.pl the rcar PCI maintainers could also
> > be listed.
> []
> > diff --git a/MAINTAINERS b/MAINTAINERS
> []
> > @@ -12933,6 +12933,7 @@ L:    linux-pci@vger.kernel.org
> >  L:   linux-renesas-soc@vger.kernel.org
> >  S:   Maintained
> >  F:   drivers/pci/controller/*rcar*
> > +F:   Documentation/devicetree/bindings/pci/*rcar*
>
> MAINTAINERS was recently sorted for consistency.
>
> Please move this new line above drivers/ to keep alphabetic ordering.
>
Sure I will rebase this patch on -next and post this patch independently.

Cheers,
--Prabhakar

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
