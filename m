Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C9B11C06C
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Dec 2019 00:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hu5/ycaA8iDKQG6kEfpQLxyBp/agdbJxnhh9PVqcHdI=; b=FOBfWBk++/LrT1h3dYx5pXX3KY
	jJ1Hu+1/U9BLC6PYwlX/hGSp13DZyYiIBuA70FacgSCBW/X72MWgypaKe1oIAk/B9QQ6e8iIFjCJS
	95+RMabASXgL0FPrd+l9/bmHhKjwXUoDsx9QrjjsMdM4O2XxWQZCXQ69rJLKHC/R6bcTE/XUk/AV3
	8nkEzmU6GfWkxZO2Vp/sS1TBeP98L1jQP0k2Ghs8lsi4veVXiLIWydORKgAE1s1vO5SK27R0pBPEM
	3YV0CF6yM4Jzxo5VRBk1w78Oyt1B35NDbRgu/dBU3m3NmrMrd94Ta1zJW/uDw9iXeakO3kH0P5csC
	/ZAbWqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifB93-00039d-To; Wed, 11 Dec 2019 23:11:49 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifB6l-0008Kd-6b; Wed, 11 Dec 2019 23:09:30 +0000
Received: by mail-wm1-x335.google.com with SMTP id q9so142758wmj.5;
 Wed, 11 Dec 2019 15:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=+KVhInttHCk8aRWpkeHbpGDkcc8DqG9qr5lNYLpkB+Q=;
 b=LkIlXSQRRleORMf3k4j0Yyq3SEEQdW30hvs2l5wJXpnGm69OqLRRVJob9A3Tv+sOBc
 C2LsnoWYQouQmOCMHz0YcNUVUFe0at5s3R4zEbXXN05Uahkehc68iWqp3pchzQ6DkToA
 EduMtgvVyBtiTG2y+7OPSnJ9rxXA3DuJ0MR/bUZaboged666N06XhMRYOMGhhOLa1wG+
 MFAzmVIaalwXJunMEG8nH5pDja0AOXcw0Xwbt2f8MmNIGcWuEq15fNWi4OfRgzSGjYE4
 tGz4w5hZ08Uv5lwSJ5WcF0GtKcBEmyySGiPHRXKOx4EyhP9aI4fAYg2aBxWc4LTmdVf2
 P2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=+KVhInttHCk8aRWpkeHbpGDkcc8DqG9qr5lNYLpkB+Q=;
 b=mw2rjVtm9H9IkpUGPXj7iS2iN5ebmOKbZsjOMJDnJ7dbnz/NT/e3XzBx9Z/iSrRE90
 Fybq1gSsEudhZvtYW/l7/EsKKyW9gjomOWtO7cgkUreALiUl4Qvy6Gzceuo4Chksylvb
 M4rRTrdXI3GYdaaJhPPn+SJfF9hOzQbwXZ4v8MRj8xwb6tPJJgcthNTkNVHK1LlKukVw
 ADuTerOmDXk7Mxl7DAJ835idPCJg6ahFt+MwIt2EcstdcUnWBQ8D8+4rGrPOHSO/UYjv
 zAaKuvYBZCPApMxCghFxpmzFj6PyFx/1LKfU8/ZGrYcTjvOR6BjL9NoGCIQq9OZ2GVyX
 M7tQ==
X-Gm-Message-State: APjAAAUIMU3Mj8HLZOPl3WClXRP5PougsM2sQwua+EQQ4SewvnQ5+Ato
 aB+49I7PoRzaAKXm5Ekb078=
X-Google-Smtp-Source: APXvYqzAA/fAeD8EPJ/WI2sdbDUFp8a+mD4mhBG/9aHEwPbxk3D6EVao+Y4pWSOQ8ZmApUr9WXpj8A==
X-Received: by 2002:a7b:c85a:: with SMTP id c26mr2579892wml.107.1576105763974; 
 Wed, 11 Dec 2019 15:09:23 -0800 (PST)
Received: from localhost ([5.59.90.131])
 by smtp.gmail.com with ESMTPSA id 16sm4025978wmi.0.2019.12.11.15.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:09:23 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: WARNING: CPU: 3 PID: 1 at
 =?iso-8859-1?Q?=5F=5Fflush=5Fwork.isra.47+0x22c/0x248?=
Date: Thu, 12 Dec 2019 00:09:21 +0100
MIME-Version: 1.0
Message-ID: <5708082a-680f-4107-aaf8-a39d76037d77@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_150927_392983_EB6E9637 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,
since v5.5-rc1 four equal consecutive traces appeared that seem related to
rockchip sound. As i wasn't sure to whom sent the report just added
everybody from
./scripts/get_maintainer.pl sound/soc/rockchip/rk3399_gru_sound.c
which is the file containg one of the functions in the trace.

By the way, sound works fine. After all traces, there is this message that
could also be related:
[    0.625354] da7219 8-001a: Using default DAI clk names: da7219-dai-wclk, 
da7219-dai-bclk

Regards,
  Vicente.

[    0.607955] ------------[ cut here ]------------
[    0.607967] WARNING: CPU: 3 PID: 1 at __flush_work.isra.47+0x22c/0x248
[    0.607972] CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc1 #1
[    0.607973] Hardware name: Google Kevin (DT)
[    0.607977] pstate: 00000005 (nzcv daif -PAN -UAO)
[    0.607980] pc : __flush_work.isra.47+0x22c/0x248
[    0.607982] lr : flush_delayed_work+0x34/0x58
[    0.607984] sp : ffff80001004b950
[    0.607985] x29: ffff80001004b950 x28: ffff8000109f47c8 
[    0.607989] x27: ffff800010b29890 x26: ffff800010acfdf0 
[    0.607992] x25: 0000000000000003 x24: 0000000000000001 
[    0.607994] x23: ffff0000f2779f00 x22: ffff800010c974f0 
[    0.607997] x21: 0000000000000000 x20: ffff800010c7ca48 
[    0.608000] x19: ffff0000f277f698 x18: 0000000000000014 
[    0.608003] x17: 000000007dad679e x16: 00000000be8a3c7e 
[    0.608006] x15: 0000000072509968 x14: 0000000000000000 
[    0.608008] x13: 0000000000000000 x12: 0000000000000000 
[    0.608011] x11: 0000000000000008 x10: 0101010101010101 
[    0.608014] x9 : 0000000000000000 x8 : 7f7f7f7f7f7f7f7f 
[    0.608017] x7 : ffff0000f3975800 x6 : 0080808080808080 
[    0.608019] x5 : dead000000000100 x4 : dead000000000122 
[    0.608022] x3 : 0000000000000000 x2 : 0000000000000000 
[    0.608025] x1 : 0000000000000000 x0 : ffff0000f277f698 
[    0.608028] Call trace:
[    0.608031]  __flush_work.isra.47+0x22c/0x248
[    0.608034]  flush_delayed_work+0x34/0x58
[    0.608040]  soc_free_pcm_runtime.part.19+0x40/0x60
[    0.608043]  snd_soc_remove_dai_link+0x54/0x60
[    0.608047]  soc_cleanup_card_resources+0x160/0x298
[    0.608050]  snd_soc_bind_card+0x248/0x978
[    0.608053]  snd_soc_register_card+0xf0/0x108
[    0.608057]  devm_snd_soc_register_card+0x40/0x90
[    0.608061]  rockchip_sound_probe+0x210/0x2e8
[    0.608066]  platform_drv_probe+0x50/0xa0
[    0.608070]  really_probe+0xd8/0x2f0
[    0.608073]  driver_probe_device+0x54/0xe8
[    0.608075]  device_driver_attach+0x6c/0x78
[    0.608078]  __driver_attach+0x68/0xe8
[    0.608082]  bus_for_each_dev+0x60/0x98
[    0.608085]  driver_attach+0x20/0x28
[    0.608088]  bus_add_driver+0x170/0x1d0
[    0.608091]  driver_register+0x60/0x110
[    0.608093]  __platform_driver_register+0x44/0x50
[    0.608098]  rockchip_sound_driver_init+0x18/0x20
[    0.608102]  do_one_initcall+0x70/0x148
[    0.608105]  kernel_init_freeable+0x1b4/0x254
[    0.608109]  kernel_init+0x10/0xfc
[    0.608113]  ret_from_fork+0x10/0x18
[    0.608117] ---[ end trace fc1c70d7fb870a47 ]---


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
