Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FD113370B
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 00:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tW8AKGBGEHdJYbh5KXQD2gublLIZNN4W6+M9sTXRzOg=; b=QLR72nkq0J4UAc
	Yq8h6N2Qry864z9ik7HlOsDs1UlD7aGlOl2mqhteYFKyvCk5qDVol0j6KesLGpCkGrOnWedyEh/jQ
	1nvuIo55x2+xKs1ZLzKFXN2cR0Q+Ey1yACPdWIZJ8LA60w6ZyorbcjF7yoskyHf95qPYyk9xkAEbD
	Xmu9cBK+u+kx9Rk5xUq9L4LFjBt2YCJSlPrBBJkUFkvIHvOs4cyE+3Hxa93bhCYO8SW4eT42QZ8OK
	VvUDu9tXUeSPzlacIPH4xohEMIJB+6tbi8oaUC2ufoAlNXGK/qHmvwBFnv5n9TZGrLcE3qL67XGwm
	qxBOx4kojeqsHwPNxlvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxw6-0003z5-Li; Tue, 07 Jan 2020 23:06:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxw1-0003wj-Mn; Tue, 07 Jan 2020 23:06:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so1435148wro.2;
 Tue, 07 Jan 2020 15:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k53sXXKoetFWE8GEEtNytoJYTuHWX23InQV8Qtu4GW8=;
 b=dENCSx36Ej5yYSporQHM0EZQIerJ0te/h42mTZ93EZeOg3JsA0ESBCTSif6qckRHaK
 rxYMyDM0wGr41OJ2wQeUr7uJj/nCJ8ALhT6f97PH0oGrtASQk3eYzqvQOtRH3qQWWWwx
 Ho396dQoJvVeasv15P595WzKK8uGDMOS1Gb7xy1PCzg5rStuXm783K0aXg8PvyEsqwcc
 0Kv2PcFCaSI0VcA/G9ZJ0gRUOB1v2TJnFP2eDUKvRyDpbozAEjmrT1BmVFLBNrGXTkxO
 khCbSxJQEspIlT9GtOklM+pRR9sEXoxc6beW7uWvF23m/lxNCBKzBu4R931JQ2k4H5DN
 O2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k53sXXKoetFWE8GEEtNytoJYTuHWX23InQV8Qtu4GW8=;
 b=FNPvPFv8i8krC6Ct1rrcwnTL3HQ/7ySTlKJKZI4UPDA1UVwPiIO86qtT8z3PNnSkQw
 G0nJDT4z9lemu2hTbNjdXaCLhDKsoRlCatWXzG5AK9RXkHpbkkeA3iQQKwbtmVaLgphH
 Td3N2em7jjp8In9cLalihB9V7A2W5lvTD8JO9nZKpPUUM0yV7nG9pT89Qp+NLkpAXKpP
 H6GD8Aj7AZMxR0oQiaCK9l+YpHpiBy3edB9waU5bHKyk9nvi388QWBuKF+wHbQM0zln0
 j/kdDn9I2yw/1Pb6VIyOxGhkbXVNd8V7Ov/eGXPpayeT+JBS1iJitdvppREcLuv5Jn0i
 ftng==
X-Gm-Message-State: APjAAAXuxupaaqmR0WhudusUEN21g2QueQgbc+5d3YnBC+LfXhITWjWe
 J2Im8rIyVh6b+zorvx6XKzg=
X-Google-Smtp-Source: APXvYqyl3Me0mVoi+rzI0uDTtUjURQ5KbxgWv7vhF2OviRpzvAMJ9EZQEFf+m7UCcWGXNpC/5ZwHsw==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr1270198wru.173.1578438408111; 
 Tue, 07 Jan 2020 15:06:48 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id g21sm1335912wmh.17.2020.01.07.15.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 15:06:47 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v1 0/3] devfreq fixes for panfrost
Date: Wed,  8 Jan 2020 00:06:23 +0100
Message-Id: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_150649_768900_EAB8F093 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

These are a bunch of devfreq fixes for panfrost that came up in a
discussion with Robin Murphy during the code-review of the lima
devfreq patches: [0]

I am only able to test patch #1 properly because the only boards with
panfrost GPU that I have are using an Amlogic SoC. We don't have
support for the OPP tables or dynamic clock changes there yet.
So patches #2 and #3 are compile-tested only.


[0] https://patchwork.freedesktop.org/patch/346898/

Martin Blumenstingl (3):
  drm/panfrost: enable devfreq based the "operating-points-v2" property
  drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
  drm/panfrost: Use the mali-supply regulator for control again

 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 33 ++++++++++++++++++---
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 30 insertions(+), 4 deletions(-)

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
