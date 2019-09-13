Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2958B175F
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 04:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FS2+ti+xDuUH5RO0cklYEP3d0gpWc6gZTlvvlOVjtH8=; b=Bk5E8YHNnaBpCa
	giZ4Fl7Hm0K1TLgu07AGFGvK9GJVWlap8lPj870qF/F9hlnNE5Wl+PO9cEcOrWrDmO3DfMK8zMx5+
	LKxqAiKPe9S8goMYmRfcCktGZaFTHNa4ajhgRer/PlDQ+17xcazOypcVizvOZ9ZKPH3Pb1S5rU650
	W9++2559rRZ+kXsFGnqbvUScHLaAx7wZJmFAVcXHU/Zpv4nU+auAWonSj0Naw4pqjA1U3fIgD9wnX
	f2mWbA3QuTIfXODAMdVLVq7Mh2XqLtAWdAMRJd+EG1vF5b15ViCD5zgt0hS4bcrpsc59497yNQd+b
	AoxJiK87Bvv/Fjtx9q6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8bew-0004qc-Gm; Fri, 13 Sep 2019 02:50:06 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ber-0004It-PO
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 02:50:03 +0000
Received: by mail-io1-xd2f.google.com with SMTP id r4so59763424iop.4
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Sep 2019 19:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=2ribh2MyOPOqi0mJEaEUt3EnExmM8DKKeaRsRhfN8qA=;
 b=EQuYwrT4CkBsEFJ9XHFbT/mqXNQXeiEFUWNeWH3yBu/+ugOiYxSZAyoMiNaXq8if+0
 mpTdnlXjs1Ybm3ZwiW0MClEv48TZkJJOkBpFSxDBVsX2EfmgTmeOG8a62nHrr2YBOWsY
 3feixOT9wxVMaigCCjRbJDt/es2PS9e2708j8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=2ribh2MyOPOqi0mJEaEUt3EnExmM8DKKeaRsRhfN8qA=;
 b=MFsR7TCgU3jgA5mMDk4+wHWTZjl25KEfJY5t54cFthCSv22P5WIevjtHtWZuGk660R
 FYGAI3rM1nMlLWLgYTA0ZODoTREfT6VBcN7a7ko4ZkrOPA9y7kxpQDGs11/sTN1CMQ1V
 rk+rckCAv9VCo5W8rPB2na+P63d+8VXpoq98fcWcft+gWmsmwWdSMTIUcExQvkYNlcS7
 YwE59qkA6tR6YgVTvllbmnDuxy+KuN/P4gE9NDwBwE5dYl2mj0O7HMOnkue1YjBumZkp
 Dqg6TMHxAbaSScn4JGF+nUnro5n4y+8GuMFo2xDEKfY07UyLOVkY6f1lwf4rVV6qZJI9
 cB7Q==
X-Gm-Message-State: APjAAAWKOCCEQgvfkI474xhN8574nConnwwjMRjXe3KpjD7fosTRQZrz
 12RLuB4JxbWLfoquYulTai+h3hdLWQarTTP3OSe7eY9vLH0=
X-Google-Smtp-Source: APXvYqwlUQEwnCUaNezy7gS6Btzo+E1uYZ4zzPSv9wAJm6DSwVlBqqHTgSZaBdjRbx95E58Q+ncjEtXQoBaTh+zh6tg=
X-Received: by 2002:a5d:8d0b:: with SMTP id p11mr8636585ioj.136.1568342998282; 
 Thu, 12 Sep 2019 19:49:58 -0700 (PDT)
MIME-Version: 1.0
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 13 Sep 2019 08:19:47 +0530
Message-ID: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
Subject: [U-Boot] rk3288: HDMI out causing boot hang
To: Simon Glass <sjg@chromium.org>, 
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Anatolij Gustschin <agust@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_195001_988647_B112D93A 
X-CRM114-Status: UNSURE (   4.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi All,

Did anyone tried HDMI out on rk3288? Enabling HDMI out causing boot
hang, during stdout initialization from console.c

Enabled below configs and stdin/out/err environment to probe the
DM_VIDEO, seems like the console initialization hangs during stdout
initialization.

Log:
Model: Tinker-RK3288
DRAM:  2 GiB
MMC:   dwmmc@ff0c0000: 1
Loading Environment from MMC... OK
1. console_init_r
2. console_init_r
2.1 console_init_r
rk3288_vop_probe
vop@ff930000: probing regulator 'vcc18_lcd'
vop@ff930000: probing regulator 'VCC18_LCD'
vop@ff930000: probing regulator 'vdd10_lcd_pwren_h'
vop@ff930000: probing regulator 'vdd10_lcd'
vop@ff930000: probing regulator 'VDD10_LCD'
vop@ff930000: probing regulator 'vcc33_lcd'
rk_display_init(vop@ff930000, 2139095040, endpoint@0)
vop_id=0
remote vop_id=0
rk_display_init(vop@ff930000): no UCLASS_DISPLAY for remote-endpoint
Device failed: ret=-22
rk_display_init(vop@ff930000, 2139095040, endpoint@1)
vop_id=1
remote vop_id=0
Found device 'hdmi@ff980000', disp_uc_priv=7cf71710
rk3288_hdmi_probe
hdmi@ff980000: probing regulator 'vcc50_hdmi'
rk_hdmi_probe: 1
rk_hdmi_probe: 2
rk_hdmi_probe: done!
fb=7f800000, size=2560 1440
rk3288_vop_probe done!

Changes:
+CONFIG_DM_VIDEO=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
+CONFIG_CONSOLE_SCROLL_LINES=10

+#define ROCKCHIP_DEVICE_SETTINGS \
+               "stdout=serial,vidconsole\0" \
+               "stderr=serial,vidconsole\0"

Any inputs?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
