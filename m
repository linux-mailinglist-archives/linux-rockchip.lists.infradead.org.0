Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA1912FFBF
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 01:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SPYBlLfKZJ3BgEDzcyNyB2UFMBxy7vePSDQ7GsR1sCs=; b=pKNK8dyj1B50sb
	DoVe5H1MGhWbpx2BKUecjh2Xrt5LDfnfJGQA+ERL79RueG7WokRLvcbasDvn41p0ST162HyZNlgJO
	iiSxlDilE/pLDzD/skPkrTKRLZsOeEtPTu2lUAMXrSqx58aYhbPPTF3VSQVuC7USYBNJsaFHFwdHi
	pYPvYLfMj3PhX1FRiA7hu7WefoQ1dFAT74OGiN//7RYKdU7V0NWGLE8qNUSbKkmOoltZcNHV12l/+
	Q5mGbBIbFxAXzPgpx7AXcKhO5sdmBwghfxIYRNsOrZp9i4kwJtbUe2AuXcDvajpFllFdxr8ltzWYZ
	imeqxcMmkaxaVFiJUG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXUG-0006fK-V3; Sat, 04 Jan 2020 00:40:16 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXUD-0006ex-JR
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 00:40:15 +0000
Received: by mail-il1-f195.google.com with SMTP id v69so37977386ili.10
 for <linux-rockchip@lists.infradead.org>; Fri, 03 Jan 2020 16:40:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dKtl1NpRX8aOyUbBGch9yTP0h5jL9ht++jj3F8wRx1Y=;
 b=FCXncYdHlosmQQS48zMStxE1jhKrw8NNqTKl37Ipr7101zJLjaC2BeMYDoAYOkvQhw
 zIBDyAvgVfgnH5N8VtefFtqhCuNCDQuyb7xvFRbRdFCNsDfPoniYerFK2nvVpNY9FQjm
 gCMlXaZtYD5z5I8ASD9tSvP7dLHWGyNdPT+1jLDIzw5jbMUra9jIjjKKxsPFQUFKARMZ
 mnT0IXhkTRsG2EaYXP+Fpdo7syxe2FGzGpG+Oaw/K9pgI/ddt5VTNRFUFAKlMOZXCYwq
 htpvPOSGjjvDBy/22DtncM5rJz4HEu1Mi2y6Vw82C4BmasECGTIxjm6TI5fpDWXblPbm
 aJMA==
X-Gm-Message-State: APjAAAUaTQuAjSE8FjNqN/NRNwO3QxUzkuSaufBaxbZI9Z5WVoHWZ7nM
 NnY8D7xgLjfGCQnRhrF/nMS05+M=
X-Google-Smtp-Source: APXvYqzDrbZLtbEnBjSJe8FARbgzyeRYhC9Ttv/phqACCdfvjan8Zt02C2W2aaSPqJYPlh9eOjJbDw==
X-Received: by 2002:a92:8712:: with SMTP id m18mr73741933ild.40.1578098412717; 
 Fri, 03 Jan 2020 16:40:12 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id v64sm21546031ila.36.2020.01.03.16.40.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:40:12 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:39:39 -0700
Date: Fri, 3 Jan 2020 17:39:39 -0700
From: Rob Herring <robh@kernel.org>
To: Akash Gajjar <akash@openedev.com>
Subject: Re: [PATCH V3, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Message-ID: <20200104003939.GA15565@bogus>
References: <20191230145008.5899-1-akash@openedev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230145008.5899-1-akash@openedev.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_164013_643185_EB9B9145 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, tom@radxa.com,
 Robin Murphy <robin.murphy@arm.com>, Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Akash Gajjar <akash@openedev.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com,
 Vivek Unune <npcomplete13@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 30 Dec 2019 20:19:32 +0530, Akash Gajjar wrote:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
> Changes for v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>  
> Changes for v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 221 ++++++++++++++++++
>  3 files changed, 227 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
