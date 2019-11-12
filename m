Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8DBF94EE
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 17:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qlW8+UI9tVdVmhsll7sOnBKAqTvWxhXBk0KLFFA1gZs=; b=GKPF+gfBKqglmw
	AcA4CcTjSKz7ZhB8vxBZYgFqdl4kBqZxtvD7SCHDCjr1LcNatq+3+BR2MnjU020h8Fvq1gbv2ACFn
	sze13jHnr5wTRX0dSqNcT7VpNV8OSbGwRdOjdha4e9IXrdb6weyuNehFvaOEPZUV2zdI9JyQrqngm
	sFX7civnuD/Gr/EL3SvmkaW20ojqkoctQK9BollN8WMkpGymRXcMsDvDRGDWVXG9zs3roXeLwoU1n
	4R1hPvvPK5ukeOREHVybVCD3P22mJofcYANFLjyxrVEcQlhl69JyyE4GnLPETN3iIDoOBd8iUL6P6
	u0ozzJUUlypZMu9niCiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYaD-0005sF-03; Tue, 12 Nov 2019 15:59:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYZx-0005WS-LZ; Tue, 12 Nov 2019 15:59:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E801CB3BC;
 Tue, 12 Nov 2019 15:59:37 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com,
	maz@kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Raspberry Pi 4 PCIe support
Date: Tue, 12 Nov 2019 16:59:19 +0100
Message-Id: <20191112155926.16476-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_075941_852337_7127994A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 f.fainelli@gmail.com, linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 phil@raspberrypi.org, jeremy.linton@arm.com,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, netdev@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series aims at providing support for Raspberry Pi 4's PCIe
controller, which is also shared with the Broadcom STB family of
devices.

There was a previous attempt to upstream this some years ago[1] but was
blocked as most STB PCIe integrations have a sparse DMA mapping[2] which
is something currently not supported by the kernel.  Luckily this is not
the case for the Raspberry Pi 4.

Note that the driver code is to be based on top of Rob Herring's series
simplifying inbound and outbound range parsing.

[1] https://patchwork.kernel.org/cover/10605933/
[2] https://patchwork.kernel.org/patch/10605957/

---

Changes since v1:
  - add generic rounddown/roundup_pow_two64() patch
  - Add MAINTAINERS patch
  - Fix Kconfig
  - Cleanup probe, use up to date APIs, exit on MSI failure
  - Get rid of linux,pci-domain and other unused constructs
  - Use edge triggered setup for MSI
  - Cleanup MSI implementation
  - Fix multiple cosmetic issues
  - Remove supend/resume code

Jim Quinlan (3):
  dt-bindings: PCI: Add bindings for brcmstb's PCIe device
  PCI: brcmstb: add Broadcom STB PCIe host controller driver
  PCI: brcmstb: add MSI capability

Nicolas Saenz Julienne (3):
  linux/log2.h: Add roundup/rounddown_pow_two64() family of functions
  ARM: dts: bcm2711: Enable PCIe controller
  MAINTAINERS: Add brcmstb PCIe controller

 .../bindings/pci/brcm,stb-pcie.yaml           |  110 ++
 MAINTAINERS                                   |    4 +
 arch/arm/boot/dts/bcm2711.dtsi                |   46 +
 drivers/net/ethernet/mellanox/mlx4/en_clock.c |    3 +-
 drivers/pci/controller/Kconfig                |    9 +
 drivers/pci/controller/Makefile               |    1 +
 drivers/pci/controller/pcie-brcmstb.c         | 1179 +++++++++++++++++
 drivers/pci/controller/pcie-cadence-ep.c      |    7 +-
 drivers/pci/controller/pcie-cadence.c         |    7 +-
 drivers/pci/controller/pcie-rockchip-ep.c     |    9 +-
 include/linux/log2.h                          |   52 +
 kernel/dma/direct.c                           |    3 +-
 12 files changed, 1412 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-brcmstb.c

-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
