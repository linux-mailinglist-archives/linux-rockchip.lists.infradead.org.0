Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B198660CD
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jul 2019 22:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CQKPTvpCPaSy816vRWDvH6pCeiKxSBi3i9nM16YoLLM=; b=KK00cuPVs9BI7j
	3Ro5qcNnMGs3i0ZBtn6r0kXmrRQWZdKHWIAfTYdICb5p/FdlP9O0amCSMtkqeGq/LQw1PzSXqF4Wr
	OBBTVYaifUpOE7JUHJxiTJzt3DzLS9VSnO6uEueMGjKR3Fc/VmMqn6vArRnoq715ji9oo2v05yEjK
	MJ+62kOKZoBPDAvCP5QOfRkuilLcl/ltvcKGPCIAlPfzZc9pCil8BQrR+7k6BMxNhtXdYgjryoB3c
	aajkoOYFEOJGdPkQULP3bITZi+UZ1xDQ/mjPHxeurfEOn3hNZ4zqQjcu06QvsVL1Nu8A5URpItJUd
	/Mu/2RoxlJ6K3nVAwrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlfw9-0007FO-Gz; Thu, 11 Jul 2019 20:45:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlfw5-0006u9-7F
 for linux-rockchip@lists.infradead.org; Thu, 11 Jul 2019 20:45:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id w24so3640244plp.2
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jul 2019 13:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PiSze+b8RyOCrdrl4z9soZ+cov9nAQWtcb1gx4qZEko=;
 b=FKtfQs2vO8puHfi8u5Itf2xIOrp80ctPquUf87JLqr/dE/UjPpoKuPH3lPJMtzczUv
 qmsjAe/JpyaR86mjQ3YQ6oLOQzCVzw9LlXoWOuuN3PkzIRWDV2tgKRefTsRzAfV8Rb2/
 p+p1+DcWIo7mGUqiAZNYCbJwDivBgkEvwYPJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PiSze+b8RyOCrdrl4z9soZ+cov9nAQWtcb1gx4qZEko=;
 b=aMioSZrh+Tll+VHYiE+GR4oCm7WmPCDRO+kenlenlX3trxd2f4zX1Mi9x0RCVcanT1
 0JJdEmfrDU9ERAkLq8jwIvSv5GQDMieTzPEk8pM/2mgLplgoevjiSOnpZSg/vlBEaXro
 EKZmFeZPGZs5JLQTlfYESCHY1PH2ujBXhOnHrKxFHdY46DfnliWHneyHDDakGApkgTFN
 o5WKLvIQVT+ug8gbF1qQofMphDwj89NHf6Q6fI/2+1mQfrb/0CJmbZJ6KY/hD5pUuEeb
 0sAYgsLGvlaBVVFrLnen0cBLdtykHZrR999kO3mhGfLxVOHVtND0uSms++mbEFRB3NHM
 Yvng==
X-Gm-Message-State: APjAAAVbcJr+pR3S0GMfuITllV67lKdEgZqlKX5xhZblxTL4viKB7R+8
 Jm6UW1mIlsvOZlQn7Q3GE2xPFQ==
X-Google-Smtp-Source: APXvYqx5OMVKLfuzSjyyKQdK5nWwU4ixzYuYMZrGSFfkXAOPPnXjXzBfWibAgOkF0K9yIsJfpGBE9Q==
X-Received: by 2002:a17:902:9898:: with SMTP id
 s24mr6688486plp.226.1562877899981; 
 Thu, 11 Jul 2019 13:44:59 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id f17sm5320110pgv.16.2019.07.11.13.44.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 13:44:59 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Subject: [PATCH v6 0/3] drm/panel: simple: Add mode support to devicetree
Date: Thu, 11 Jul 2019 13:34:52 -0700
Message-Id: <20190711203455.125667-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_134501_288934_11A9AB3D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

I'm reviving Sean Paul's old patchset to get mode support in device
tree.  The cover letter for his v3 is at:
https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html

v6 of this patch is just a repost of the 3 DRM patches in v5 rebased
atop drm-misc.  A few notes:
- I've dropped the bindings patch.  Commit 821a1f7171ae ("dt-bindings:
  display: Convert common panel bindings to DT schema") has landed and
  Rob H said [1] that when that landed the bindings were implicitly
  supported.
- Since the bindings patch was dropped I am assuming that Heiko
  can just pick up the .dts patches from the v5 series.  I
  double-checked with him and he confirmed this is fine.  Thus I
  have left the device tree patches out of this version.

There were some coding style discussions on v5 of the path but it's
been agreed that we can land this series as-is and after it lands we
can address the minor style issues.

[1] https://lkml.kernel.org/r/CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com

Changes in v6:
- Rebased to drm-misc next
- Added tags

Changes in v5:
- Added Heiko's Tested-by

Changes in v4:
- Don't add mode from timing if override was specified (Thierry)
- Add warning if timing and fixed mode was specified (Thierry)
- Don't add fixed mode if timing was specified (Thierry)
- Refactor/rename a bit to avoid extra indentation from "if" tests
- i should be unsigned (Thierry)
- Add annoying WARN_ONs for some cases (Thierry)
- Simplify 'No display_timing found' handling (Thierry)
- Rename to panel_simple_parse_override_mode() (Thierry)
- display_timing for Innolux n116bge new for v4.
- display_timing for AUO b101ean01 new for v4.

Changes in v3:
- No longer parse display-timings subnode, use panel-timing (Rob)

Changes in v2:
- Parse the full display-timings node (using the native-mode) (Rob)

Douglas Anderson (2):
  drm/panel: simple: Use display_timing for Innolux n116bge
  drm/panel: simple: Use display_timing for AUO b101ean01

Sean Paul (1):
  drm/panel: simple: Add ability to override typical timing

 drivers/gpu/drm/panel/panel-simple.c | 171 ++++++++++++++++++++++-----
 1 file changed, 139 insertions(+), 32 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
