Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ACC1C099D
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5xy8x5KnwJ3iiZviVP/VyYVIZ+QawCsnwVx6g8gJrgE=; b=B9J
	gpKVbMykChdL0T6uE2ErhW5mZGIMceL8/fMMT2eXoBLEaU4xsmy90iCiX3jSgKoisFthUy8j5Gmyp
	aIt/yKXDq6/wSDnQrrJYwdt50cACWCGbUQ0Nmp5phpJp5DYxJgzYDokwCAw5+IHbXWI62EY1Hg1jE
	hJttV5ynIu975OjAGGjo0QYs3QxYKuorQMV/4R8POVqLn9w3sarSwfnjygiFJzVn+BY4V5IYq98ZI
	sH4J3OGr9RqS+qT/KrzS+eW63ERbP+m1O0e88PL+TmhyGcBA/I6OTODVfuyD9hX65heuS0VBKIAnG
	cCfbHgY0ZwmzF2K7+uYNhG8E8oY+HRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0D-0006rN-PB; Thu, 30 Apr 2020 21:45:53 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0A-0006qA-5Q
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:45:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id mq3so1456668pjb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Mft02k1EWwZ/HNm5maq7S/AAnogxHFeoUgCVQnPuQmY=;
 b=Iys5N08DBcAMZUael1/ZNC5oEgGfgMOGnJ9j9ubYKnAB9ppgowY04VQGH4lTzls3Yr
 KgFwTWNh0Yqf7NCEA7QJk38TSmEBAFTdKcu2AUFjQ05lfNvO+tS5/UNdeZjdkOzeVsZO
 RTMmLpviSC0Y5xSs/gcIqxhgGsEtgWBzNuxM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Mft02k1EWwZ/HNm5maq7S/AAnogxHFeoUgCVQnPuQmY=;
 b=pOBwY2dba292Pt4Pm9K1JCsJWqerZK8s0nFuTeLF5WONTkT8lFNAdirzkRHZL9jtIG
 1UPs2qGpkaTKpvKJUyKgLvyaAp381jRkHI2pdZnli4owW9mllOj/P2D9zi1fatuA310w
 OL2fhJeGdo3JF4q1HkVAcYTxZujZZg5oZsfqYfUd66z5NgXrQ+ajJMgbTxHS2uQTKSQe
 nGJfZ2Ebq+FyFpSREFR5lor7mSImKjkNx+GP4lD7Hc2w7LCaDEZJZyhYmf+q6i+T+4K3
 rNAW3pGgrG9HHDFzjCNyRzSFBWdsY0XysAM4VQCmNG3v61LicjXj4Gw4XOZvZurdWB7N
 umVA==
X-Gm-Message-State: AGi0PubzwYHr8kwr5Yc+AA4q19IdG9Lph7jJNx2rbtgI4TqeosMnO1z+
 Q4QhBo2GQkt26RfiPbTiqw0PyPWLltiOhQ==
X-Google-Smtp-Source: APiQypKme2Itd8ALJWqD2tlv2NC1Jrsk0NKHs7EfzCvqJ2oJEyFVo6PbjyEwWqA6gGTqnLGM0d4Xjg==
X-Received: by 2002:a17:902:bf46:: with SMTP id
 u6mr1044774pls.318.1588283148229; 
 Thu, 30 Apr 2020 14:45:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:45:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 0/7] rockchip: Add PHY drivers
Date: Fri,  1 May 2020 03:15:22 +0530
Message-Id: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144550_343830_1AD09EC9 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch add support for USB2PHY and PCIe PHY driver
on rockchip platform and tested the same in rk3399.

Basic code is referenced from Linux, hence all the
license SPDX are reused.

The reason behind sending this as RFC is PHY devices 
for u2phy, pcie_phy nodes are unable to get via 
Generic PHY framework. The observed reasons are
1) u2phy is not part of root node.
2) pcie_phy is not part of root node and also parent
   is of non-PHY type.

This is sample PHY provider topology that Generic PHY
is failed to get PHY device.

   /{ 
      grf: syscon@ff770000 {
	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
	reg = <0x0 0xff770000 0x0 0x10000>;
	#address-cells = <1>;
	#size-cells = <1>;

	u2phy0: usb2-phy@e450 {
		compatible = "rockchip,rk3399-usb2phy";
		reg = <0xe450 0x10>;
		clocks = <&cru SCLK_USB2PHY0_REF>;
		clock-names = "phyclk";
		#clock-cells = <0>;
		clock-output-names = "clk_usbphy0_480m";
		status = "disabled";

		u2phy0_host: host-port {
			#phy-cells = <0>;
			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
			interrupt-names = "linestate";
			status = "disabled";
		};

		u2phy0_otg: otg-port {
			#phy-cells = <0>;
			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
			interrupt-names = "otg-bvalid", "otg-id",
					  "linestate";
			status = "disabled";
		};
	};

	pcie_phy: pcie-phy {
		compatible = "rockchip,rk3399-pcie-phy";
		clocks = <&cru SCLK_PCIEPHY_REF>;
		clock-names = "refclk";
		#phy-cells = <1>;
		resets = <&cru SRST_PCIEPHY>;
		drive-impedance-ohm = <50>;
		reset-names = "phy";
		status = "disabled";
	};
   };

So, this series moved these nodes as part of root 
to make it work but of course any suggestions on this 
will be taken into consideration.

Any inputs?
Jagan.

Jagan Teki (7):
  phy: Add Rockchip PCIe PHY driver
  clk: rk3399: Enable/Disable the USB2PHY clk
  phy: rockchip: Add Rockchip USB2PHY driver
  arm64: dts: rk3399: Move u2phy into root port
  arm64: dts: rk3399: Move pcie_phy into root port
  pci: rockchip: Switch to generic-phy
  pci: rockchip: Drop legacy PHY driver

 arch/arm/dts/rk3399.dtsi                      | 118 +++----
 drivers/Kconfig                               |   2 +
 drivers/Makefile                              |   1 +
 drivers/clk/rockchip/clk_rk3399.c             |  12 +
 drivers/pci/Makefile                          |   2 +-
 drivers/pci/pcie_rockchip.c                   |  95 +++++-
 drivers/pci/pcie_rockchip.h                   | 142 --------
 drivers/pci/pcie_rockchip_phy.c               | 205 ------------
 drivers/phy/rockchip/Kconfig                  |  16 +
 drivers/phy/rockchip/Makefile                 |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 ++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-pcie.c      | 271 +++++++++++++++
 12 files changed, 764 insertions(+), 419 deletions(-)
 delete mode 100644 drivers/pci/pcie_rockchip.h
 delete mode 100644 drivers/pci/pcie_rockchip_phy.c
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
