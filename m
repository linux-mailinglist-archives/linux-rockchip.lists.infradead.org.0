Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA14E7695
	for <lists+linux-rockchip@lfdr.de>; Mon, 28 Oct 2019 17:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Duxs5sin6jz4s6nBTCXVHRz0MDjoDjX4Wh8z4vqiSkU=; b=flatSYqdhSLsCs
	Xyj5OACLgjaXNLiSPP7+bZnQ5IT6nzpQR8ajWzojkxG1fL0pVRhe7aqgAe5g8wEBENwY1+y3pCKr6
	asjq9Z+jHNSkfid6NLb9CNiDLjFQkYQfuFcrklQtQ8ZMQ3JnK/qiJ+g+ho4ARJy01whi4iBNEfVwW
	b3l/7J/dzuR7c3XR9DRP3E1IyA9XmYXUxtOOwB6sK5Je9zz6gOkyH+0PjYqOwZYicgByhucSghxEu
	jGkuhwzC3PmnAIdz3ZNJa9wR8sVvHe6frb691Vdy8xwyerRGyyjA1b0SjJhlQLWpxxrdz5GZ5SyWH
	1SrCSdg5Kys82F+YM0Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP81H-0002nl-5Z; Mon, 28 Oct 2019 16:37:27 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xF-0006sw-5d; Mon, 28 Oct 2019 16:33:19 +0000
Received: by mail-oi1-f196.google.com with SMTP id s5so6384616oie.10;
 Mon, 28 Oct 2019 09:33:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YIfpHXHDoS6BpoLM/5OtgGD1veZ0kiS1z+l67O5mhv0=;
 b=t/Qp0W7b1TTtfMzOY+WvcW1gRMhSZyqfYWHNCIiJJa+qTt3rvA2zQQ4dCJ+R0fjba6
 Dy+GKY22mi9JyGL96/CHLvnfdt2wVmAyWHYdiInXPMmutcbVmFDsqIv4QflszjG3yqcR
 qW9UxzMKe/gwz43SdWO/+LL8gTxVZ5p3H5Q8JK6cYDj6pNpZTK07w5830O0/Kk+v47kk
 4vlmzBEtalK+KCNFC4GzPhQZTqqNfIeMzz9vLav0J8H9DsQmMI15Gai1qCEcAJgioyed
 8k9QNAsB3lhl8QniD6QSTfVYtPs9iCVaHKUNkAh07r8VPpsl1l1r4LhAQyhfM3+QOOxE
 WVcw==
X-Gm-Message-State: APjAAAVkIS+HrT0gFB/jpZXI8FEzXbfHlPq1SsdrytTog4ldF8ggTk3h
 Jga9rQZx46GBmdflhN2g3A==
X-Google-Smtp-Source: APXvYqwiII4tT6mUV/WZPdOOYCJP3razv09fHNkFp9JLAVkZPyu7pCRKafjRWtkftQVgR7SzFninKQ==
X-Received: by 2002:aca:494e:: with SMTP id w75mr95048oia.159.1572280394774;
 Mon, 28 Oct 2019 09:33:14 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:14 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 07/25] PCI: iproc: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:38 -0500
Message-Id: <20191028163256.8004-8-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093317_346395_0E356AC8 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
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

Convert the iProc host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list, so just use
bridge->windows directly.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-iproc-platform.c | 8 ++------
 drivers/pci/controller/pcie-iproc.c          | 5 -----
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
index 9ee6200a66f4..375d815f7301 100644
--- a/drivers/pci/controller/pcie-iproc-platform.c
+++ b/drivers/pci/controller/pcie-iproc-platform.c
@@ -43,8 +43,6 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	struct iproc_pcie *pcie;
 	struct device_node *np = dev->of_node;
 	struct resource reg;
-	resource_size_t iobase = 0;
-	LIST_HEAD(resources);
 	struct pci_host_bridge *bridge;
 	int ret;
 
@@ -97,8 +95,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	if (IS_ERR(pcie->phy))
 		return PTR_ERR(pcie->phy);
 
-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
-						    &iobase);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret) {
 		dev_err(dev, "unable to get PCI host bridge resources\n");
 		return ret;
@@ -113,10 +110,9 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 		pcie->map_irq = of_irq_parse_and_map_pci;
 	}
 
-	ret = iproc_pcie_setup(pcie, &resources);
+	ret = iproc_pcie_setup(pcie, &bridge->windows);
 	if (ret) {
 		dev_err(dev, "PCIe controller setup failed\n");
-		pci_free_resource_list(&resources);
 		return ret;
 	}
 
diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 2d457bfdaf66..223335ee791a 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1498,10 +1498,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 		return ret;
 	}
 
-	ret = devm_request_pci_bus_resources(dev, res);
-	if (ret)
-		return ret;
-
 	ret = phy_init(pcie->phy);
 	if (ret) {
 		dev_err(dev, "unable to initialize PCIe PHY\n");
@@ -1543,7 +1539,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 		if (iproc_pcie_msi_enable(pcie))
 			dev_info(dev, "not using iProc MSI\n");
 
-	list_splice_init(res, &host->windows);
 	host->busnr = 0;
 	host->dev.parent = dev;
 	host->ops = &iproc_pcie_ops;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
