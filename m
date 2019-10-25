Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3975EE4C3F
	for <lists+linux-rockchip@lfdr.de>; Fri, 25 Oct 2019 15:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toOWvT9kHdE2FiVbK0nsbRX2etR0k9zDcBtDbKz/Glk=; b=LrfJsiJIb6dU7+
	jyf9Zv9wBFRy4eeDk6xeBrPjSeTUdy/FJJAEqi2bUjA6LrmxF9z21VWZK3IVgSHm0VrzoIHDkHbT+
	+XT5A3y7jF3ux/qQ/fBTq2xHmcEmMxCmRRDhEjKMrdmqEy9sLtM0+4+UAHAIuo6tpVWCsCuz4HJzB
	U4v4aiBDrouV5hxIhFAWTTKL07rTQ9+8IkxvRCf4paY6uqcasgA3bxd9V7A1BpN/oLGmlOJwI2vvC
	LslwWGZKJPhXhPwH3SdARiZRHJNnoMCQ5A2xU/p2tEt8+Zt37jVHFVMDUSX0jyehxiN8x/LnPBnU3
	1rfu1Xg8F3bHToycKSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzgc-0007wP-9L; Fri, 25 Oct 2019 13:31:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzfu-0007OE-Ti
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 13:30:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so1250499plq.5
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 06:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cSyCYud2FH3n+k9xbUM5DyhXCO7gVkxyPIn3KZPMoVk=;
 b=ALs7cBkQVNo8Fjg8m921Llfxbt4MVCf1rdkYs1AcXTM9C09gmEnNUXT7yWsplEi+Mf
 Fyejp8alA8EbzYFsN56GPkbqtFESHfu6RZQUVFLVTT3/korWMFAnqfvBBovvWHUxiL25
 PgbWjppTeshaG6YvdyZkW8o7x6NOK7A5YAYGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cSyCYud2FH3n+k9xbUM5DyhXCO7gVkxyPIn3KZPMoVk=;
 b=YmSEMGLat+YRI7PZB0rgEiHPZheU73Zy2Y1jmkDvsRIPt45dA9cuV18Nsh0vslRC93
 zVFxljkfU4hCmc7RRCBd+sryVpQWGXIjrFBs/lhRBb5nzrkeobVgl4iiayPVBBEX0Mi6
 wi1JUcfEZif4e39oIvSIW7May8Wg7f+lVuwxS3FBysReMlroDqh9NN1y/ema2U/KOqAU
 inHArNf1sYxznLcEqj/leKH3s/yCFVFOKr4N2L2s3fcDSEGa+f1vNk/aBlfzb59Jo3zG
 2rXds1lVzCjXnk1fuhdN70gPAMxDBHp68x+NgEK/eFTJ0JKjxBjcVBfNR/xgzTo6rtVV
 lk3A==
X-Gm-Message-State: APjAAAXEVt3cHZr70gbiGReeWUvjgA6+t7xGPHjY2SYtO+h0+UrftmYZ
 YemGd+emaFbWAwuGvx6xNumGfg==
X-Google-Smtp-Source: APXvYqycQHeVv2f79P4vAiHHa3Pb9F7SMzCFxXTSqpZwuyvYWP563v5bjWFJjMgio5zv8hLxW+r38w==
X-Received: by 2002:a17:902:ab89:: with SMTP id
 f9mr3842331plr.295.1572010241727; 
 Fri, 25 Oct 2019 06:30:41 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id p2sm384312pfn.140.2019.10.25.06.30.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:30:41 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
Date: Fri, 25 Oct 2019 21:30:03 +0800
Message-Id: <20191025133007.11190-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063043_084373_12BFABDE 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There will be multiple boards sharing this machine driver.
Use compatible string to specify the use case.

"rockchip,rockchip-audio-max98090" for max98090-only.
"rockchip,rockchip-audio-hdmi" for HDMI-only
"rockchip,rockchip-audio-max98090-hdmi" for max98090 plus

Move these properties to optional because they are not needed for
HDMI-only use case.
"rockchip,audio-codec": The phandle of the MAX98090 audio codec
"rockchip,headset-codec": The phandle of Ext chip for jack detection

The machine driver change will add support for HDMI codec in
rockchip-max98090.
Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
device node in DTS so machine driver can find hdmi-codec device node for
codec DAI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..75f438741ca6 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -1,15 +1,29 @@
 ROCKCHIP with MAX98090 CODEC
 
 Required properties:
-- compatible: "rockchip,rockchip-audio-max98090"
+- compatible: Set this property to one of the strings below depending on the
+              usage on the board:
+              "rockchip,rockchip-audio-max98090" for max98090-only.
+              "rockchip,rockchip-audio-hdmi" for HDMI-only
+              "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus HDMI.
 - rockchip,model: The user-visible name of this sound complex
 - rockchip,i2s-controller: The phandle of the Rockchip I2S controller that's
   connected to the CODEC
-- rockchip,audio-codec: The phandle of the MAX98090 audio codec
-- rockchip,headset-codec: The phandle of Ext chip for jack detection
+
+Optional properties:
+- rockchip,audio-codec: The phandle of the MAX98090 audio codec. This is
+                        required if compatible string is set to the one
+                        with max98090.
+- rockchip,headset-codec: The phandle of Ext chip for jack detection. This is
+                          required if compatible string is set to the one
+                          with max98090.
+- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec. This is
+                       required if compatible string is set to the one with
+                       HDMI.
 
 Example:
 
+/* For max98090-only board. */
 sound {
 	compatible = "rockchip,rockchip-audio-max98090";
 	rockchip,model = "ROCKCHIP-I2S";
@@ -17,3 +31,21 @@ sound {
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
 };
+
+/* For HDMI-only board. */
+sound {
+	compatible = "rockchip,rockchip-audio-hdmi";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,hdmi-codec = <&hdmi>;
+};
+
+/* For max98090 plus HDMI board. */
+sound {
+	compatible = "rockchip,rockchip-audio-max98090-hdmi";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,audio-codec = <&max98090>;
+	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi-codec = <&hdmi>;
+};
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
