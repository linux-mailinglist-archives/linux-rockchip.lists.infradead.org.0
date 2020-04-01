Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D4819A934
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 Apr 2020 12:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vl5E9ObnIVEwVjqpsoejW1crjii0flxm5/5WTL02rPc=; b=XsuBiiRgfId210
	Cr+Vg3JNFFBJCBECASJQj/6qBLURxjYieFGKqCuO2amAFqb2fh4YoMjDCTfMjeck1Jjqt0K708T6K
	gTIFPM/UekMOARoDxoOrnUoeFeVo9k+8VXHtuA4jXanC/b/xW6fEESYLICRWrNUCPFqG7gKzec9U9
	pF2pS54iHlojkq90uSHvH2HQywmdpQ+GPE84p8OGepqX7qLEmdJcTwBoYMfY4h9B2t6o6w4xeuXMF
	XHuZ0bmuuzRiRRbhP2xgUWWyTp9CByxyP4vqfJT7AdE8l1FONQrnc1ILDuK76v+ydFhh3/GKdW+h7
	c5fZbTgBq+kWZHDr2zeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJaK5-0001uc-Sa; Wed, 01 Apr 2020 10:10:13 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJaK1-00006n-R0
 for linux-rockchip@lists.infradead.org; Wed, 01 Apr 2020 10:10:11 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1jJaJs-0003sj-Vz; Wed, 01 Apr 2020 12:10:01 +0200
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89FA1.dip0.t-ipconnect.de
 [217.232.159.161]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 031A9wEm005626
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Wed, 1 Apr 2020 12:09:58 +0200
Subject: Re: Power Key/button on rk3399-roc-pc
To: Suniel Mahesh <sunil@amarulasolutions.com>, djw@t-chip.com.cn
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
Date: Wed, 1 Apr 2020 12:09:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1585735809;
 a8ad5ea1; 
X-HE-SMSGID: 1jJaJs-0003sj-Vz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_031010_040499_57E28839 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Suniel,

Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
> Hi Markus, Levin and all,
> 
> Can you guys please suggest me on my requirement.
> 
> rk3399-roc-pc board has a Power Key/button. As per the schematics this
> Power Key/button
> is connected to GPIO0_A5.

And to PWRON of RK808.

> 
> My requirement is can I use this button for board powerup (especially
> in linux when we issue
> "poweroff" command, the board shuts down and it should power back on
> after I press the Power Key/button).
> 
> For the above to happen, I think this Power Key/button be connected to
> PMIC RK808-D IC, am i correct ?

Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
> 
> In the schematics, it is not very clear as if such arrangement is
> there (though it says it can be an option in
> RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
> 
> Please suggest/comment on my requirement.

Should work, everything is in place, just press long enough ;-).

Btw. could you just revert your recent U-Boot commit
checking GPIO0_A5 that prevents unattended booting?

Thanks,
--
Markus

> 
> Thanks and regards
> Suniel
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
