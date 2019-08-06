Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6031C82DDE
	for <lists+linux-rockchip@lfdr.de>; Tue,  6 Aug 2019 10:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz1HXxp5lCjPVLMNlwH/jxyUBX82xOoCk14tSuS+HDI=; b=CvF2mcqTEkwoXJ
	97yrvnAnfsaIH1GvHiVjM+AxxCJ7RnfusEaEeUFz0TBBATJQ2+/aiYySrNpHecuW6pjkeu22CXirD
	MDlH9WrlBfTkX6ltZYHO82iVYvhx4JRQUAIXl9Hv66RkrTTS1WT0Fdbeoy3DmSocUC6k8jtjqJ7Dp
	ASWs77Ebqq9WgRCTrvy3gB7prr4hwNYNXyRqBnCFNWb/3VfeMIaeY8dwuCTnnnMoVq4NpCGLtztr6
	e4PIhsmNta4HLfAVn0utIxLZ2wtEhzgvqHjBICXIxJnEL6EuS/m/mrNJYbINgLOv4cIi8QG8HTks+
	l7RlxxHLCh+P5XiWcWfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuxj-0006I6-2U; Tue, 06 Aug 2019 08:36:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuxO-00063t-Lh; Tue, 06 Aug 2019 08:36:36 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1huux4-0003Qy-MP; Tue, 06 Aug 2019 10:36:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Sean Paul <sean@poorly.run>
Subject: Re: [PATCH 05/13] drm: rockchip: Provide ddc symlink in inno_hdmi
 sysfs directory
Date: Tue, 06 Aug 2019 10:36:13 +0200
Message-ID: <5678760.RHkh9mv3Rf@phil>
In-Reply-To: <52272b8ebf403361ff96e04bf14f5a7389116f73.1564591626.git.andrzej.p@collabora.com>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
 <cover.1564591626.git.andrzej.p@collabora.com>
 <52272b8ebf403361ff96e04bf14f5a7389116f73.1564591626.git.andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_013634_857472_0A5FDEDD 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Leo Li <sunpeng.li@amd.com>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, kernel@collabora.com,
 Harry Wentland <harry.wentland@amd.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 31. Juli 2019, 18:58:14 CEST schrieb Andrzej Pietrasiewicz:
> Use the ddc pointer provided by the generic connector.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
