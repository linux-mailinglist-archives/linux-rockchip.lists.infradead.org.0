Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999CCD9B53
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 22:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaX5IhfY/vF+hGXLnn2kauQ0QtAYx6BOcIYsKpMYkPw=; b=e1dUQDLGTbBTgY
	SVuD8al6mIFTD7IFQmstG4FUIUg6tBnrg5uydlWHzx2/qzdsH0Ch9N18nOVa7UrW9UFjExCmV9U04
	5YGgPWTV9jl4rdFgkU8l3xSe9GApJJuH1p4TtXW9SZEMK2h2i0fdqPYwZAnayKLmE2H4GrwpS0pKb
	VY9RYL3L2gBQps0fudp81e7uOeb0vE9MWGxk00f4o6BmIJZyyCpyLdMYJCzSKHDPpk/xPR47f11zn
	lLF6uqX7Px44QsOHKWEHCIy2A8EzATxqmSHEjieyVIMGm+1sl9ZX+v8CA3+1m9Ol72b1FwIaY/6Xr
	5eKJuji6c2MMSr2bZcVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKphx-0002oa-F0; Wed, 16 Oct 2019 20:15:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZQ-0001sV-2B; Wed, 16 Oct 2019 20:06:58 +0000
Received: by mail-ot1-f68.google.com with SMTP id m19so21320500otp.1;
 Wed, 16 Oct 2019 13:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Btu/VlfytRZaY+6qjqJxR2pSL/YxyYxi3r5SfblrlQk=;
 b=ovZf73i2H038reeC2trh2mgRib/l6+R5uLKNVGUDCosqBQddK36gd/uXsyFNJY2dk5
 3Sr37vvBM1cs82MJEZpZVE/nBjtjF9g3/rcTO4mvek1T+F+J5bLlSYHx2n2KaVGNqm2O
 biCw056uNtlKa+gA+2vojWnV5vRSJiB6fmompdheGk5rdEWG1gwwarXefVGVH/gvMyc7
 3Q3MX1Rh14O0cuStKXrF03FZPIqdE9A4IJUsAz4dW8Hd6o/68mi34HVG3kE56I1zd5CF
 RqCbBu7tdOYQACijL5iSgjTVogVS5WJ4GKR8WCsTI66xHZcZLm23f2w6C3CHLJxuSvlj
 f+3A==
X-Gm-Message-State: APjAAAXDa1J19KYQJNWrQl8YD70ZCNL+CZVKLRhqxlZtKmokPg0RhXKT
 hNkjpp3KrvMxoyt9QwBPyw==
X-Google-Smtp-Source: APXvYqycFopfXI+GcKWWyYhxyLaMbDzafvCCT1NvwKVnttvQlkfb63DPNfCWWHL9V+mWFmlMEsy1Ow==
X-Received: by 2002:a05:6830:1da2:: with SMTP id
 z2mr46692oti.136.1571256414262; 
 Wed, 16 Oct 2019 13:06:54 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:06:53 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 02/25] PCI: Export pci_parse_request_of_pci_ranges()
Date: Wed, 16 Oct 2019 15:06:24 -0500
Message-Id: <20191016200647.32050-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130656_123239_CE9142BD 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

pci_parse_request_of_pci_ranges() is missing a module export, so add it.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 drivers/pci/of.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 36891e7deee3..f3da49a31db4 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -530,6 +530,7 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
 	pci_free_resource_list(resources);
 	return err;
 }
+EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);

 #endif /* CONFIG_PCI */

--
2.20.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
