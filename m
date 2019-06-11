Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B443CFAD
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlQEbnLONhyr/GB2CYERtksHvm7NKlpILXfNHUywjp8=; b=ATdl8uwz/7NGss
	UKHPvokUWtbtkKLnqEoOw138tYBhkjtcXXxKxkgfcLD2oTbFCQaijfb2HnTF73jXQ5iKWCGJgT1mZ
	wj3H458GE4uMtTdom0hxW75r6bhDilCM03lvwq2VJ7ic49zydKaHBS4m+KPnk6jDNYDoEQ+r9EA9j
	VqUha7LgRqBlaBThX5laSjI+o2p61j7SiPfefeU60vppXj6lxIeC2oH8IHYuoXi3X9TG71hPKoUBE
	6wpACJ7QDQ63dRF03rt/fY12ZV0T+o+ynAaaWV+DcBY/ROZJWxE7ktRPxVzdDM5oBO5JcqPMTbak5
	SnW6dl9Is22JsnfN0Xlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBH-0007Gg-Iz; Tue, 11 Jun 2019 14:55:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBD-0007ES-EL
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so5223803pls.13
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=nDsuaL94e8NmLFMqJgboVDAAQnZC/Q+fyfsBVe99HUxhkygPTG4+uizXcS71VA7iJC
 j9uSup7WfYUiCB0bb1BGMZSIGm9yUCDnUijJV6nAhosf+mYKx6i6O1VTX1JThXiam9Vz
 PNmBUx9OEMFWWJtapvkxCfUTHEl7goscnz3iQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=GRpnGiH/ASAX74sFZuo9i29GwGUmHyp1KZ/RPkolWDvov9N+s5JgpyNekczkBMza/E
 67KM2b0tTY9X7z44ALFTBQgXS65Q5tSAHlnA+zra/e7+gnlv/Mtp+1VVHS8teRpPCsIY
 eFJa78Ie59ZLXptT7GOV/HpICNN6xSNCdnyuHA8JjF8jH51PeVzsLUzrKCeX+nUDPLoB
 5SOcRI8rPdtKNIeuM+pJ46lAGeNVoRM5nFLd3T8eosT9rspkRJoaF645cBoPzoUL/VVG
 Ts8tLtoANUf/FVeePKf1Sp62iWqnaWLDNqmSMnutI0LPh1Bnigx/4VnofW70KDoaimM7
 h/2Q==
X-Gm-Message-State: APjAAAVWoJsi04B4RLwca4T78SjeqzNEW0QozUKpTKKWVqzKj3AFnUVl
 VlG/eBFlFvPq8XXJMTvH85v8hQ==
X-Google-Smtp-Source: APXvYqxRlThXN59UKUXkjGmpW7YH4VZ2YXSy7a2m5KX+LxfDodDC0yTll2IYDP8MznJF7GGB4dCmrw==
X-Received: by 2002:a17:902:624:: with SMTP id
 33mr77404730plg.325.1560264918711; 
 Tue, 11 Jun 2019 07:55:18 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 52/92] rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi
Date: Tue, 11 Jun 2019 20:20:55 +0530
Message-Id: <20190611145135.21399-53-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075519_530909_0E097F86 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use DDR3-1866 2GB ddr timings dtsi for 1GB NanoPi Neo4 board.

Since sdram rk3399 support dynamic stride and rank detection it
can able to detect 1GB ddr eventough the timings are meant for
dual channel, 2GB size.

Bootchain after and before this change are:

 TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

This certainly fix the second channel data training initialization
since we have dynamic rank, stride where second channel capabilities
are clear or memset to 0.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
index 7d22528f49..eb0aca4758 100644
--- a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-nanopi4-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1866.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
