Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732DC130173
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRXNLJ7RtNTPup/j9Un5fAVsjhU445rGKq5UXRFxzr4=; b=B909F5RMbuZc6T
	aw5ueKMOq9b9iTd6z4VTvstZGtvqu6/UEft+DwmXkO4pyN5ICCC5S91lOLY07r8R5rEz2F+thsOzS
	lMaWP9VMPUjBFgbtxskzpul8ddDqWf4GPpxUJKIf7lxgtWjVFdsIjOkzg4f8mJ7jGQ/D20zqAVgEf
	dH7L6AYq4kzEu1DhWDQ+ZMUR1B0CA0BBQa7i+ERdnaVWtwnpoz42JDnodDJAdKLUJuL777qSpuZF0
	vwC3GDUnrpmRXj+dAsuDIWQagSK8Z/g8291ss6TDpNofA0YhXfLQt9q9CPbldwOknbwQM7Bke5KCj
	jgyDdV0Ak7qvhGUzmZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inex9-0003EO-G8; Sat, 04 Jan 2020 08:38:35 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inex5-0003C9-TZ
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:33 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s7so5662439pjc.0
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fCEJAVTeFVKCDScEQscaeQ9cpdN3+DTMCdxgai1STTg=;
 b=W7T61wSENS++/58kjL+YAxWogoRtvumbSUc5D+tciCvnpWHx2sFJattxwu+QYD5Gd8
 l8xzcPfRMml45eORZT7l3xyad2slTD0sGA8ymrdvUeau3tHPFHFai9P69QRD/1syrBfH
 vvmEAlfQNgP7y/nfDjS4fiUcgOaRclA+GnrLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fCEJAVTeFVKCDScEQscaeQ9cpdN3+DTMCdxgai1STTg=;
 b=a8HXUIJK4jhCBxJuSC8GAS3PBuKWzhtbvp2JC3b2YTGMF7Nuo4OvcsJ8fViqyegaL8
 M0gAHxmqku85Pb3eQT2oVI4uPMDvCrLqAkrMhyOXkMl3ClpXBh95ya34RMfAiMtFpCGS
 eKeVZ1h0FwiBQoMLvvd8kGK+ULZznpfKf2VyvW3kIz4n2w9ec9acvC8DywQHwZdBAA/v
 QhvHTLD+DHWepkb7B+/X6ixxYHBbY/JdCCOxpCx9cCiXT5JlD5F8xFCIjVnUD4Etgxq0
 sSYBjyf+oBSO44rG1A0aA64rWRfdtqyJBj6Y1rRo4gPekGMfhEM1CfdPTQCUXiUp2qPD
 8gHg==
X-Gm-Message-State: APjAAAX4S93ocl/l1f7o5RlCzer/adhTeeTWfxO13NMLOrKtVwux6G2u
 UbEvs5Uu+f9XmT7R+TXABvUITg==
X-Google-Smtp-Source: APXvYqyb6yrATUp0Gtpf8eeI7akRbSpXDQWi8AZSyL0uj+xRevGk7Iko+f8+SRDGWhkepEOzj6FbKw==
X-Received: by 2002:a17:902:8e87:: with SMTP id
 bg7mr70053365plb.279.1578127110826; 
 Sat, 04 Jan 2020 00:38:30 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:30 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 3/6] Makefile: rockchip: Support SPL-alone mkimage
Date: Sat,  4 Jan 2020 14:08:03 +0530
Message-Id: <20200104083806.3930-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003831_968623_FE136581 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add SPL-alone mkimage tooling support via Makefile for
few platforms or boards used in rockchip family.

With this users would get rid of explicitly creating
mkimage tool for rockchip rksd or rkspi boot modes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index e519103be4..d8a0f68883 100644
--- a/Makefile
+++ b/Makefile
@@ -908,7 +908,7 @@ ifeq ($(CONFIG_MPC85xx)$(CONFIG_OF_SEPARATE),yy)
 ALL-y += u-boot-with-dtb.bin
 endif
 
-ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
+ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
 ALL-y += idbloader.img
 endif
 
@@ -1382,11 +1382,19 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
+# TPL + SPL
+ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
 MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
+else
+MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+idbloader.img: spl/u-boot-spl.bin FORCE
+	$(call if_changed,mkimage)
+endif
+
 endif
 
 ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
