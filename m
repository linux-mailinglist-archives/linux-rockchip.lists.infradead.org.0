Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB891B85D2
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 12:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NZd18lZ2WtWUu2NGIv1oo9wP89vMvAgf6UzhoDf7tfI=; b=dHf
	F4YNk5f/JPiiT55UtWBYf71FD66KjLeNsWBtDs9ezwU48CQTlDZnr6ywivdXnsosH4E6/BWaMgOlA
	ewLaS4c3Su10oc7qWC4QYbouj1xsC6UK+YakIf+snZSXD6K2/ul+AeSkiiiKZfs5GQTGfkqUS8mzv
	HTFD2aXarI/sxKZ6uBcrr9peek8KfT6xu6M36aea5XkIDNBb4dSCybuvpO9GoYnm5IKuHYd9v93/k
	tE52A0f4zDPiYIGethqhFyOstTV/a2vv6fkI2EEWoaI5uo90PxdB9Q5hkW0HzWf8H4UIO3ZdFSyK2
	e905Z4vQidOWkl360GY5bg9Jo+mBOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIRF-0007r5-D9; Sat, 25 Apr 2020 10:53:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIRC-0007q3-5H
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 10:53:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id o15so5939603pgi.1
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 03:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qxQd2GCmbsZFJ/4j/c2rbeB4cmHo+cg12c4rpSrWpIY=;
 b=IfMiFhd+c6duA2sr1y+BsdEGz67cMMcj0TH8pBANu2TtZx1tM9u50lw0IcRiPv9mRc
 ckwFICo5pSZs+uiDx2bkkS9hlHVCinjjvqGS3dw3Su2YDr3rkfjVbp3jny0iw9QRpVdO
 jbY4PdZ1E5LGQr6ztF04CIFuooW4INaRNp9IA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qxQd2GCmbsZFJ/4j/c2rbeB4cmHo+cg12c4rpSrWpIY=;
 b=SeJELx4ljel8FnqRfiYdA3YV4iJZaFfa3leYlVS8RG88fQts0vx70XdgOJabSM5HV4
 ckN1EyqPKDEK4XMjKUrbqghMDbZL0gNxe11w+0oqeIVjw+6vhhoT0EDrtRBEQs7TZVac
 UqCAVHQEta/Bgjf5SMuapNF9VDB9bZkfdiR4hXCP90PZ3L0kgeLtgIKhzlmzrvnaFOuc
 ISlzID3ix7sS2o59e6KpgRcxdAbx37JTbXRhanLwIkQ059MBU5z4CF5nctu7/psND3ts
 4P5l+i3JFZbVgQPMNpHdiBAg5cdMSOm1rx9jwzVNQTxamr3zdsk2AYXmIsil+MhFk4f6
 J6tA==
X-Gm-Message-State: AGi0PuYvWms6fZCYjSwix7cqgLcuxRSHs33n0qoGyVOCeg4IHJb7x9jk
 738/gmGoRp4TLnV+VXigyQbsDg==
X-Google-Smtp-Source: APiQypKbgzFTBcLYL/vx2y7fYgoEk+jLD96hj5/nZlag7fHHSPDTaVADIKzvduKs7sV4jJQN9y2oTw==
X-Received: by 2002:a62:2783:: with SMTP id
 n125mr15046340pfn.133.1587812012284; 
 Sat, 25 Apr 2020 03:53:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 u188sm7996303pfu.33.2020.04.25.03.53.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 03:53:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 0/6] rk3399: Sync linux v5.7-rc1 dts(i)
Date: Sat, 25 Apr 2020 16:23:13 +0530
Message-Id: <20200425105319.12009-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_035335_151720_94DE1682 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This would help to add new boards along with new drivers
like PCIe on rk3399 platform.

So, add v5.7-rc1 linux-next dts(i) files on rk3399 platform.

Any inputs?
Jagan.

Jagan Teki (5):
  arm64: dts: rk3399-puma: Move u-boot properties into -u-boot.dtsi
  arm64: dts: rk3399-evb: Move u-boot properties into -u-boot.dtsi
  clk: rk3399: Set empty for HCLK_SD assigned-clocks
  arm64: dts: rk3399: Sync v5.7-rc1 from Linux
  arm: dts: rk3399: Sync roc-pc-mezzanine from v5.7-rc1

Suniel Mahesh (1):
  rk3399: Add ROC-RK3399-PC Mezzanine board

 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/cros-ec-keyboard.dtsi            |  10 +-
 arch/arm/dts/cros-ec-sbs.dtsi                 |  39 +-
 arch/arm/dts/rk3399-evb-u-boot.dtsi           |   8 +
 arch/arm/dts/rk3399-evb.dts                   | 522 ++++++++----
 arch/arm/dts/rk3399-ficus.dts                 |   6 +
 arch/arm/dts/rk3399-firefly.dts               | 251 ++++--
 arch/arm/dts/rk3399-gru-bob.dts               |  16 +-
 arch/arm/dts/rk3399-gru-chromebook.dtsi       |  40 +-
 arch/arm/dts/rk3399-gru-kevin.dts             |  34 +-
 arch/arm/dts/rk3399-gru.dtsi                  |  90 +-
 arch/arm/dts/rk3399-khadas-edge.dtsi          |   3 +
 arch/arm/dts/rk3399-leez-p710.dts             |  36 +-
 arch/arm/dts/rk3399-nanopc-t4.dts             |  47 +-
 arch/arm/dts/rk3399-nanopi4.dtsi              |  66 +-
 arch/arm/dts/rk3399-orangepi.dts              |  79 +-
 arch/arm/dts/rk3399-puma-u-boot.dtsi          |  31 +-
 arch/arm/dts/rk3399-puma.dtsi                 | 578 +++++--------
 .../dts/rk3399-roc-pc-mezzanine-u-boot.dtsi   |  26 +
 arch/arm/dts/rk3399-roc-pc-mezzanine.dts      |  93 ++
 arch/arm/dts/rk3399-roc-pc.dts                |   3 +-
 arch/arm/dts/rk3399-roc-pc.dtsi               |  35 +-
 arch/arm/dts/rk3399-rock-pi-4.dts             | 129 +++
 arch/arm/dts/rk3399-rock960.dts               |  49 ++
 arch/arm/dts/rk3399-rock960.dtsi              |  13 +-
 arch/arm/dts/rk3399-rockpro64.dts             | 751 +----------------
 arch/arm/dts/rk3399-rockpro64.dtsi            | 797 ++++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |   1 +
 arch/arm/dts/rk3399.dtsi                      | 583 ++++++++-----
 board/firefly/roc-pc-rk3399/MAINTAINERS       |   2 +
 configs/roc-pc-mezzanine-rk3399_defconfig     |  67 ++
 drivers/clk/rockchip/clk_rk3399.c             |   1 +
 32 files changed, 2747 insertions(+), 1660 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-roc-pc-mezzanine.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dtsi
 create mode 100644 configs/roc-pc-mezzanine-rk3399_defconfig

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
