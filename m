Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640E8E0B0F
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 19:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sbMmqj4qvUmp6RJVNtSkqZKV9A6rJ19l/fULnnZCj0=; b=bEb2KV1nnt/AN4
	ap2aELCp4rbU7P7fvmV3vz3wqkigYZc+BOf0HV5KqCI6O5kKm3RdKvdybDSmRrHIkVLuX8lPPn/9/
	G8rKr6FbXwLcQbYsypUkKmihJhAOkcmm0HTqIOZ1LcmrhJ5edr2jR7PBrl94hCIAUkmVIomsT5zej
	B9VukXWR6ykjzHWxngIRRf1k/0RgvzSVU0fzi4QeAgeptO3il2FTOYGPh/PUxLmzvP91Ms4RIOQFt
	rXxe697p9m8AdbDu/len8KOwtCPj4SJXdlwPSj5Dt5MkZTK9hn36MAQ6sx+vLyFCaN1vSe2nA1vUz
	P1nfCWsSBqIebXkI2Chw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyNu-0006Pa-Lr; Tue, 22 Oct 2019 17:55:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyNr-0006Mv-5H
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 17:55:52 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so10386174pgd.11
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 10:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lRDKt8xfey6dz+nEQkZBANYmiCJVoJzwKsd1QzvrGjs=;
 b=YJRC7uiPmVz4/jFfBwrOZDXEhvk0SlpGaSnfE6L7qwA8GkaL1NJeIfaYAdpcgA6RQN
 OEr7IKNCk4jlS0SfpxvV3lF7jGr+7vB3h2rVy2s0eyJTINIRVagUsJGft5EcBDSWCP9n
 Ocyk3QLzjKTzxsZ8GCYbcxBgXb+HdEitRQBXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lRDKt8xfey6dz+nEQkZBANYmiCJVoJzwKsd1QzvrGjs=;
 b=e2QggztdhXOTbQq8/lmDxSuqLgj26Mbez7gkwgnACC7thpxoI1LaUJvMEVkX9ToDn0
 hDbHoxAq1fUZ24dyGaEuOutW0ixnp270sgiMFdO7HDWTTh8v4Pwcf9IjiVazqH7eRaEF
 N5qEtuyxqQ8FViZkPTigt4oX0unRC0IClx5cUJx1YCJhFJUqdcAJmKoKyz2hnsvysqXE
 nuRoRD20K1T55gSO/MrWmdn6ZoF/d6MY4wGB+RrcQp21TXNU+QlqlAvbiGn9jtI3wLVF
 rgPQs/StYYgYR/KJimKd8naiGQaq/RdgECRflPzX7nWrrUJ9oxAzaxi61nHthafbIvNi
 3g7g==
X-Gm-Message-State: APjAAAWNW7rSPGsGSZjzNFusyHnJ5Q/Qd2TyMvwUbTF14HdExzXs3IE6
 hfC6NFuhd++SDpCTatSEi90HoQ==
X-Google-Smtp-Source: APXvYqxwtKYPHV/PwMpZeHlFkaKAA1IqNBgkNGKkSPtSZaGNrDA2CxYaWuMP8wZqlka/3jUPsp2Ztg==
X-Received: by 2002:a63:4e09:: with SMTP id c9mr4923940pgb.98.1571766950396;
 Tue, 22 Oct 2019 10:55:50 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id b3sm20454775pfd.125.2019.10.22.10.55.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 10:55:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH 9/9] rockchip: rk3399: Enable fastboot
Date: Tue, 22 Oct 2019 23:24:58 +0530
Message-Id: <20191022175458.22604-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191022175458.22604-1-jagan@amarulasolutions.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105551_212542_C4CD8575 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable fastboot on NanoPC-T4 and ROC-PC based rk3399 boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/nanopc-t4-rk3399_defconfig | 3 +++
 configs/roc-rk3399-pc_defconfig    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index 1d4c8f8a02..608f7fad30 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -53,5 +53,8 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_GADGET=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
diff --git a/configs/roc-rk3399-pc_defconfig b/configs/roc-rk3399-pc_defconfig
index 28b18333d7..571df0ff14 100644
--- a/configs/roc-rk3399-pc_defconfig
+++ b/configs/roc-rk3399-pc_defconfig
@@ -54,5 +54,8 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_DWC3=y
+CONFIG_USB_DWC3_GADGET=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
