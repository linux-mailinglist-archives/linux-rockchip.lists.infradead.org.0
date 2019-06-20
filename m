Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571094CB90
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDj4HPsL7Vdr+HyuetVWOFLFyXFSiC0/M9Z6iP2rnfI=; b=U5K9WwYTl2yf71
	gWd5ykrUA1RZlj52ol0Ff00njZHK9r2IQIvGTbbp9SVUfT9AgD5h8zkhD32w6p9Smk1ql9EjvrstD
	DWUA5fNZJxZaw0zrGRYs8MjzgYkw5fNKm4//m9dF1iqHr/DdJxzSpiVbWX50xLtewVJpJEv6Lch0J
	HqgYnbBFjPo7pMHqHFZOzB4sLhxME+R4zSIYDnWbrhD7hZweaC7Ez4o0IvSY48eWktiLiltgzHhcU
	lm1uDa9VLjvF9RYSos3Jq9A+mVz4iceyaHDfmwD5QGY8B9KbxpSl86LojFlM9GaWvdJ2efqRDi4zj
	N9ETSAQOkqZ1J5/Mn3mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtza-0006Xb-J2; Thu, 20 Jun 2019 10:08:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtzF-0006Gp-Ba
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id f21so1336907pgi.3
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w5i2VSUzQkRVcoB9lCAN8b89i0Y9O4o5VEZfaAnhAlg=;
 b=YoQDxqYhyMqdFhmjHR780g9EjeoOolo9AVad3W1AoKDrLt1PMifLuKav6ZNZXMvEFr
 jfV2YwQdDgxApy+iylQwK/Vu8D9uFF7dSZ9oxUgjMCFeqSGp6QcXAOpiE1rUizPNokmf
 +M4eVmn+2AdHPhCn3cRawsuMzH/7GUd8F6/0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w5i2VSUzQkRVcoB9lCAN8b89i0Y9O4o5VEZfaAnhAlg=;
 b=egxI4WDcDcO6zkDDmZ9ORa32y8QFJa+GtPBOqnbQSnBbuyxJgj6hWm40sFR6tkwWf3
 GbNlPjOcO/T6KeUbiND5+ZRHvKXfuKycL7E0jCfXDinjBxyiUfd2OsZ4zd35+QBMmcWQ
 s8/pvjIoKNL8MtCQTczPQ52oqBVhwB7T+PMlbGjv6BpweK3vuq2ezrW4K/4+4w067Ju7
 vZZGc3zqZIRFNOpv5Y+54OvSdEfBRTcA68sboYj4UZPjCJpKHxcPzMVzoI91Z/t5aNCe
 Pv1Iemi9NwzRBPRBgEqEkkJmziFEghnM8xRJi3owpPQkqpcp/a/8MeopRFXFwIVS5mHx
 SoBg==
X-Gm-Message-State: APjAAAXAvEpVYgB35mWmOvvlMM3n+4KtQ0boBePNWllDiEr7G/BuDaF5
 SiaHQMajc6KY3QbA+DtfQLs7Bg==
X-Google-Smtp-Source: APXvYqxz9j7KHyJMCAuHOfKaOh4z1u1rFp+a54hVjIukp3OPheARrfJgpJWJ9+5bZtpC38vM3SGrmg==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr2236868pjp.47.1561025288338; 
 Thu, 20 Jun 2019 03:08:08 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.08.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:08:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 3/6] travis.yml: Add pyelftools install entry
Date: Thu, 20 Jun 2019 15:37:37 +0530
Message-Id: <20190620100740.6560-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620100740.6560-1-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030809_485625_EEFA068F 
X-CRM114-Status: UNSURE (   8.25  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Currently rockchip platform is using explicit 'make u-boot.itb' for
building u-boot.itb but if we enable CONFIG_BUILD_TARGET as 'u-boot.itb'
then the resulting u-boot.itb directly will create by make.

But, that indeed make travis build fail since it require python-pyelftools
host package.

So add pyelftools install entry as 'pip install pyelftools', this would
create pyelftools on travis host which are required to build rk3399 itb.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 .travis.yml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.travis.yml b/.travis.yml
index 8bd49ef1a5..94b795ef21 100644
--- a/.travis.yml
+++ b/.travis.yml
@@ -50,6 +50,7 @@ install:
  - . /tmp/venv/bin/activate
  - pip install pytest==2.8.7
  - pip install python-subunit
+ - pip install pyelftools
  - grub-mkimage -o ~/grub_x86.efi -O i386-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - grub-mkimage -o ~/grub_x64.efi -O x86_64-efi normal  echo lsefimmap lsefi lsefisystab efinet tftp minicmd
  - mkdir ~/grub2-arm
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
