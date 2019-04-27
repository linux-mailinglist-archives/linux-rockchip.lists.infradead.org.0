Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F138DB33E
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5pjOVGjz5JfSY7fGe+8r6EwVGA4woBkXjybDZtYlJaU=; b=gGkjJgU/2D4pDk
	pQ80024nFiYvBz1WYF1SOvmmfxip3pZxNt/BklgYLec8wbOrY87D5XKTKMnvA2LBGHmMu2c6oe5Yk
	e1I5u+d/sWwg1Iyf8A46W3Zr/88FWjU5EPlpjIGfzF4ZfT33jV4XpPz0GXKBnZM7XjlJb7geEAUnD
	iyBrF753sVCNGuRIWauSy7w4yJLCnoHHTSfvfctezypiHJXqZQGdwXZnYWs/qH8wPTTMjrL77/SaJ
	nGHJBiKEyp8cEsCgzJkNocBBk2ItTnE6PbxraMwC7oahLSsXhAo+pKE+FydJ/Pu042Cu4cQr0XqId
	fE4JEFdSoVmtEh4B0xIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLj1-0007My-81; Sat, 27 Apr 2019 11:42:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLix-0007Lo-60
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:42:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id l2so37146plt.11
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DirUSEpnK6tR/s9SuekBdXCgGgOlAtTi68/qpA5Rtfk=;
 b=WNnS6PcUY4qWVOvwm6E3L7EmnLinnq4eUquLOy17kOy0Oz+X4xarjdGYXrV1uCHknN
 a4EHpAwwLsgiTgsIRS3WD3tdyiNlcJxopu/oDyqC0OTeWxoXOJP/hV7JLpc29LSfVcs2
 L9YRd6vCkL2PFABwRqOWrZsxvM3M2X5tKAXlw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DirUSEpnK6tR/s9SuekBdXCgGgOlAtTi68/qpA5Rtfk=;
 b=i68bV2E+iOfHfsDVYdcRCOL4tI0NfTfn8XNECb6xZvGh7bHbcSeornv5s3dBJd+kwr
 Rh8dfSpV/YLcHMoKzuylNBkRWuX2p3E/4w4yCnc7U/XeGUpZ8H2+jSuVVj5SK8hkBku+
 AQkvDnxR9U3MxJIvjX8L1Lsx5vkIla1K2sIzk1uy76DUzpHuFzy1KBsEtB/RSns3fEk0
 Mn6qg/B/DqSHgOulLxnYnmuxUlnUZDXbbtmcLB6nTChwxsAAUt4xy53kuqcLfcxcki6R
 MWHF2NG3YJrU3DNbO0GHU13aP9mBSlmp/ykOrQbOAu3abCX1hoN9jBLnXVj6pFRLpf8d
 xIJQ==
X-Gm-Message-State: APjAAAV7i3u+A9inWFhKP4UmMDYmBNtv6S90e97OIiBflY7fICH1ccSF
 pIHIhj7xJUWAJHHusMqY7fiOGw==
X-Google-Smtp-Source: APXvYqxszZ+VgaTbL9sTCGa2O6nQ9R971c0bePjcArLCxTSI77xcwZ82YBVaGMbRENsvHxv7K6dELw==
X-Received: by 2002:a17:902:784d:: with SMTP id
 e13mr52256170pln.152.1556365347968; 
 Sat, 27 Apr 2019 04:42:27 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k79sm68958973pfj.28.2019.04.27.04.42.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:42:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 0/3] arm64: rockchip: dts: Add rk3399 -u-boot.dtsi files
Date: Sat, 27 Apr 2019 17:11:59 +0530
Message-Id: <20190427114202.7358-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044231_379239_004B0E93 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is a rework of v5 patch that send it in separate series[1]

All these changes are creating an initial rk3399-u-boot.dtsi and rk3399
board -u-boot.dtsi files and u-boot specific dts changes like
- sdram dtsi
- sdmmc, u-boot,dm-pre-reloc
- spi1, u-boot,dm-pre-reloc

Changes for v6:
- spilt the existing patch[1] into multiple patches
  and send as a separate series.

[1] https://patchwork.ozlabs.org/patch/1091720/

Any inputs?
Jagan.

Jagan Teki (3):
  arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi files
  arm64: rockchip: dts: Add initial rk3399-u-boot.dtsi file
  arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi

 arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++++
 arch/arm/dts/rk3399-evb.dts             |  2 --
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  6 ++++++
 arch/arm/dts/rk3399-ficus.dts           |  1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-firefly.dts         |  2 --
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-gru-bob.dts         |  1 -
 arch/arm/dts/rk3399-gru-u-boot.dtsi     |  6 ++++++
 arch/arm/dts/rk3399-gru.dtsi            |  1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    |  1 +
 arch/arm/dts/rk3399-puma.dtsi           |  3 ---
 arch/arm/dts/rk3399-rock960-u-boot.dtsi |  6 ++++++
 arch/arm/dts/rk3399-rock960.dts         |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi         | 12 ++++++++++++
 15 files changed, 52 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
