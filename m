Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FC715B959
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Feb 2020 07:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CfPu8qr1FUJIJnXt9RINAI5I+OF9azqUoSIOjEUGp/o=; b=G6c
	tFFQW18RF/ArDGL9bqetqRkBV0mdPKxPak0ifAFGbuVAUqV8F2ExvgRTveCaQMdUYm7TZZywHtoEi
	XKw8idxbHTEAf+TKAT+ozC2sxIfYHhDys1Xb54f+qrqJGdzhhdKpI8bt9ulgHFYaYSqqd88XqEAF6
	EZBXAGJmdaLTiSVVBiFiahBq/s9utvLeqmwlRirIx6wpz8ddn8Tvc+uHTHfdav4OjD51JxfUfbAza
	hZOo03FvQw7ahTe64i3N/JpGOmpPrUyQ7/Jfm12Z0fZbH0gGxl+FDT14BcVrZbCqbQZKRZDXTr8zS
	t3U5QKiSCphjTS9RrZTloLMM8jkebVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27hW-0006VZ-EX; Thu, 13 Feb 2020 06:10:14 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27hS-0005I6-IU
 for linux-rockchip@lists.infradead.org; Thu, 13 Feb 2020 06:10:12 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0DBC77B572;
 Thu, 13 Feb 2020 14:09:50 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16450T140624477026048S1581574189162340_; 
 Thu, 13 Feb 2020 14:09:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bf2bbd6009bc82268b1b0e4b1c4c96d8>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 0/6] Add Rockchip new PCIe controller and combo phy support
Date: Thu, 13 Feb 2020 14:08:05 +0800
Message-Id: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_221010_920314_1204BC4F 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.131 listed in wl.mailspike.net]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


Rockchip's new PCIe controller is based on DesignWare IP and the
combo phy is shard by PCIe and USB3.0 controller. This series adds
both of controller and phy drivers found on Rockchip RV1808 platform.


Changes in v2:
- fix yaml format
- add commit log and fix Kconfig
- remove dead code

Shawn Lin (3):
  dt-bindings: add binding for Rockchip combo phy using an Innosilicon
    IP
  PCI: dwc: Skip allocating own MSI domain if using external MSI domain
  MAINTAINERS: Update PCIe drivers for Rockchip

Simon Xue (2):
  dt-bindings: rockchip: Add DesignWare based PCIe controller
  PCI: rockchip: add DesignWare based PCIe controller

William Wu (1):
  phy/rockchip: inno-combophy: Add initial support

 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  148 +++
 .../bindings/phy/rockchip,inno-combophy.yaml       |   80 ++
 MAINTAINERS                                        |    4 +-
 drivers/pci/controller/Kconfig                     |    4 +-
 drivers/pci/controller/dwc/Kconfig                 |    9 +
 drivers/pci/controller/dwc/Makefile                |    1 +
 drivers/pci/controller/dwc/pcie-designware-host.c  |   10 +-
 drivers/pci/controller/dwc/pcie-designware.h       |    1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c      |  439 ++++++++
 drivers/phy/rockchip/Kconfig                       |    8 +
 drivers/phy/rockchip/Makefile                      |    1 +
 drivers/phy/rockchip/phy-rockchip-inno-combphy.c   | 1056 ++++++++++++++++++++
 12 files changed, 1757 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-dw-rockchip.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-combphy.c

-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
