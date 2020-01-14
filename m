Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9865A13A19E
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Jan 2020 08:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Cyx/vlm3Fn4BySyvighG7EI3Uo4R99e2YGUwsMDuRpA=; b=rfd
	OUAhlComw7bVGYYBnLqnfFMgeDW+soZZYeNlvy9HDIoltQeiHbBHjYw1i4aWwNOhAT6TtRrRbhLtJ
	RyWKLIm3hLDAaoUq3rknDuVMfSeHVqM6MqkGVW925Kf3K4VM5pzN1t4+rqzvGRSA97DE/BILohqO/
	eLUqP+grBDXYMH2s+aqWUhavSJDWM0ZBuWm029Zqhl9Vc2+UbYfpoIM2jyz02RqhSBmuPVIHUfu2K
	UAkl1qJ7MWMef0XSCnEwM70Oiw0gkCtDDLEop6X/YhTRHfhd2aSTKzflmMLCERZrjjD/2Q9/WYZ+l
	Dp9TBJNyZ4Wg8uJr6y5fm7MWZ6RNiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGYM-0000a9-DV; Tue, 14 Jan 2020 07:23:54 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGYJ-0000Yq-Gu
 for linux-rockchip@lists.infradead.org; Tue, 14 Jan 2020 07:23:53 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id D0E358B3DC;
 Tue, 14 Jan 2020 15:23:41 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5437T140292994864896S1578986620990337_; 
 Tue, 14 Jan 2020 15:23:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ba0af653f1f1c9e0d455d384f8fc3ce9>
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
Subject: [PATCH 0/6] Add Rockchip new PCIe controller and combo phy support
Date: Tue, 14 Jan 2020 15:22:54 +0800
Message-Id: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232351_742143_7BE2F8C8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  132 +++
 .../bindings/phy/rockchip,inno-combophy.yaml       |   84 ++
 MAINTAINERS                                        |    4 +-
 drivers/pci/controller/dwc/Kconfig                 |    9 +
 drivers/pci/controller/dwc/Makefile                |    1 +
 drivers/pci/controller/dwc/pcie-designware-host.c  |   10 +-
 drivers/pci/controller/dwc/pcie-designware.h       |    1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c      |  441 ++++++++
 drivers/phy/rockchip/Kconfig                       |    8 +
 drivers/phy/rockchip/Makefile                      |    1 +
 drivers/phy/rockchip/phy-rockchip-inno-combphy.c   | 1056 ++++++++++++++++++++
 11 files changed, 1745 insertions(+), 2 deletions(-)
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
