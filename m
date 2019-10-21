Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CD4DE192
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 02:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLftF6zJUN0Ol2CSUgQa0bbjVxXIzkfkRxlsE3QeJjo=; b=QZb1ftyulU8Bnq
	9MdCEeX1EkFBcEZvYhuSETpcypqaB/FpsXuaQ1z5wm9h2ljBuF0HjqcM6fbBmEFvU1gRpijGZ/bUS
	oXLqfjmdp/weEq8BPsNroy6tijuehNZ37K8qM41FrfNR1YKdK0l+nVnJm/NzNGOzkVExZ7lE4ydhh
	/PrRjnNH2PVX3Y3EeO1+JF5ByqUGv/ODgZe4BuSCShKO6cUMqThQSkbjXq2/1ZGi4T+qmbVFT5lRT
	6cK+GNmUdDqiF+DftLuWCHofI4eYLwGoNquyQ3ID/J+mb++XqLRsVjzuo7yK5dUoPUubkwLoeEG/m
	n0AiOatHy010n+Zjtz+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLm4-0003bk-NE; Mon, 21 Oct 2019 00:42:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLm0-0003aX-Lo
 for linux-rockchip@lists.infradead.org; Mon, 21 Oct 2019 00:42:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so11395950ljj.6
 for <linux-rockchip@lists.infradead.org>; Sun, 20 Oct 2019 17:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U5RAFiewUpPwyWuNdO/9XHW8T8gkSCyTvJItx6zJP94=;
 b=KmVc3jxGab4evVVavdh8XOYseBclVoWhBn3e9VOmXOZdYnYPMcL5SpohY4awkYK3DQ
 ETOCTAvUrzeAA3ul7m/7zfE0PHm6zwSF3ye2VoN++TBijRbvYwEkQCP05TO+pB9YqrFR
 +q7MfhaCHG4BsAstUzZZHQ8PulcP3ubwfYlrvNuM/ElkY8bA2eObOyRtPuiA3p/mY54V
 VP2vhufU23hOrjdFpos+8jdfhEXZfXeYSaLsJ+vvLJAv4qBMDOfDfq/V/XtjjgF0Ai55
 +EMVQR7fFKfIUu14QUj/HT8f24/VPzQjTJwZmF+Vdyf/LYZVLXDM9MQCxVYrUDTqA1fw
 E3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U5RAFiewUpPwyWuNdO/9XHW8T8gkSCyTvJItx6zJP94=;
 b=uB7BC+zp91pamKwS0Eoh7C36HGJ+uNq+i1X53pWcj2zsOnvG2TivwX/7Jo/aTWIPIs
 EE0ogDYYO/dCK7aWBy2ttPE7qJRSIFihu43mPjtmP8VOlpwXtngiPNKGgxtM7zXc/Dro
 w4INh/5Ffagr608zC38V/bXbY4l/WEcmouq9p3+h97G1kCNDT7TZXjdCwgODz8CeDQql
 qWCtU7X+KTIBnknyDqy48ts1z2rxWtafHWPdEbf2n9pfxGmZdM2Fmhfa5HfDwFT+5u7M
 M0nBb7SRbg8P8PQleF8zzDmRKuJyOuilc+4SclBjeTPJei9RTn8Bf4wk/bSI7R2lrdyG
 HHLg==
X-Gm-Message-State: APjAAAVRK4lDkR1ohOas+CnvSzhNMo1VJ7MpFsEeIfv1G38M174mNf3y
 1mjnJZnfv/mqQEGmOh+21AChEujEpYHEyGlgWozMmw==
X-Google-Smtp-Source: APXvYqx02W60Klyl42qZZwLW2dzAZTfOGWXnrCHVzSdWGC2CYqb7qVDnpQS6901eL0bM7HBE5DOtd24dGywuNoa+dsM=
X-Received: by 2002:a2e:1214:: with SMTP id t20mr12711065lje.191.1571618531310; 
 Sun, 20 Oct 2019 17:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-21-robh@kernel.org>
In-Reply-To: <20191016200647.32050-21-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:41:58 +0200
Message-ID: <CACRpkdby+LF5B8t8omn4CVv36NoYya0DZJPCi3a-4FUmDCFrVA@mail.gmail.com>
Subject: Re: [PATCH v2 20/25] PCI: ftpci100: Use inbound resources for setup
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_174212_714046_FCD8A0F0 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert Faraday ftpci100 host bridge to use
> the resource list to setup the inbound addresses.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
