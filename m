Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B144647B7F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qdik8FOY1kT2Mk6iiNrkbS7zxB+KHkCudsBsgl2nrYQ=; b=EUCLcsyUyDOXq4
	xWjzYoxlfCsg1A4hkphz3loZ3D6UFiNW+lVretFVed9Bf5SvXGJqlci1rYQ3FVgTj7aTUbOcaPMyg
	+ektokpRrz95bnyWdCX1ae/yVEkL4wj478gz+GedACFAzwyjq74fvWSOUXT9mr5WP1hg0cYwk9GWR
	c6gHTPiJXJiYywBaD+KodPwPiDWTFJKMxnBf3JkyVeraIEsN0GYQQ7nSUC3E6KtUy/y8ScQgxOpKu
	sgXSTkl6ZzUA44K8KXKyspUik3zOCP9sgpQ7xCLnXLCfNtiMyR1pe6OtLsoGIa39Z5wpTrGfAooVd
	N+hTeOHdTysGxiSeqIhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGq-0002JN-Sq; Mon, 17 Jun 2019 07:41:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGm-0002Gi-7a
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so5189680pff.9
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hbcHlKCRqbxOTbDnKCzjF3Yweun38feJv9UyiGlSNKA=;
 b=llQMMvDNstp2dXfuTsznUfSCnXXyk4G2y5gaBO7vT9S9BAzfaAZxh3OwIyL26zi5Bs
 ko1ix9L3yM1Ij8ELv549kr6v6Ky9sj9QdCmIDPyNsIUtJMZOV8JHgMSYBPNQwn0FcJKN
 XlUgzglwdwxJpoQtj5+R1ZDvQBHHdQ4teSCLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hbcHlKCRqbxOTbDnKCzjF3Yweun38feJv9UyiGlSNKA=;
 b=RdJ344eoDuB5/VAAlyODXVn0Rol7ZmWHfCsKv4eBrleV5GW9QWnkmHn9crqLW/JObT
 pGE8gm9KFeCaw39168samBGPFx85qO4ir5K+PxTJQqKs81oTTnb5BdX/BHmIGn9mDp/y
 uDkZe9Eri58MmMTT6DdriPWRO+HImqAbEEhAqfKWDiMDXzUuPOe903z+W/RyJNWwTFYt
 MwH/uKJqROXwBHP2dMEhDto9wGuKcU3SIFkjM5P4L8w35HKjkiIu8oGX/3DZIWV6CiPq
 YF5HWvJqinntLi+niFx7CHomDoZ35I7X9sjiS5QTFSlmy7Wld6/5LirnezCZLiXrtaxS
 ZflQ==
X-Gm-Message-State: APjAAAWbdWRoPxjJ7ygFebdkDiu8DlcDGY82kmWs4ItJswjnJOC3CWy0
 IZyyMosuguyNSIidyXlvxyFjYA==
X-Google-Smtp-Source: APXvYqz6jZ7Pd7S0fGKhMowxMOBLdcOfyVSnZlvLgSqNH2I5h9+kGWBR7+PUFR3rbXNpyrQynHYKgg==
X-Received: by 2002:a62:1d11:: with SMTP id d17mr20799254pfd.249.1560757295788; 
 Mon, 17 Jun 2019 00:41:35 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 95/99] configs: rockpro64: Enable LPDDR4 support
Date: Mon, 17 Jun 2019 13:02:48 +0530
Message-Id: <20190617073252.27810-96-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004136_299866_8912C33F 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to foot-print issues, we have LPDDR4 code can be
marked as CONFIG_RAM_RK3399_LPDDR4.

So, enable it for Rockpro64 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rockpro64-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 90bcaedbd2..cb09df6fb7 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_DEFAULT_DEVICE_TREE="rk3399-rockpro64"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_TPL=y
 CONFIG_ENV_IS_IN_MMC=y
+CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
