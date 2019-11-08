Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AA1F4DBC
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 15:07:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9W/xqBSveYxBJNa/RiFeWx3u2ccOZTYmNmxU+PYqAM=; b=XCGyr2I91/ik0N
	lLH+gwP3bjwcncY+AKDu3y6TcGBhq8ayqhYl0Moe2nos9NLALF79pyyHorju4fpr3xYlgsg/U3dN0
	PONv9O0gZVgVMPJ04oe9sAnxKVDcIw3OYzANZ7rcGQHbQbd4xFAsDLbfwBv7UsLz4tHlhg5cOIgZP
	zefP7Oy5ke8QvLWNgr6PdTcKxTmAlZ+Taxc4EpxLt26MD1dh/DH5wo00cnsJ8XAnii3wCGYjxoaJg
	7AlWDYFhoFT/X5mY9gCyUCtf6lh/HPtb9VRGywWGLI9STdeNEJqinKdId+2kNOQIgiJrMwUTRfYK3
	r0VJPoD+7KEZ3yNLFVQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4v9-0006XT-Bq; Fri, 08 Nov 2019 14:07:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4uu-0006O7-Mi; Fri, 08 Nov 2019 14:07:16 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT4uS-0001Tu-Pp; Fri, 08 Nov 2019 15:06:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Date: Fri, 08 Nov 2019 15:06:44 +0100
Message-ID: <4996186.DxzAFJqeGu@diego>
In-Reply-To: <20191108124630.GA10207@wambui>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
 <20191107133851.GF63329@art_vandelay> <20191108124630.GA10207@wambui>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_060714_848880_16F5DA3D 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

[it seems your Reply-To mail header is set strangely as
Reply-To: 20191107133851.GF63329@art_vandelay
which confuses my MTA]

Am Freitag, 8. November 2019, 13:46:30 CET schrieb Wambui Karuga:
> On Thu, Nov 07, 2019 at 08:38:51AM -0500, Sean Paul wrote:
> > On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
> > > On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> > > > Replace the use of the dev_err macro with the DRM_DEV_ERROR
> > > > DRM helper macro.
> > > 
> > > The commit message should show the reason _why_ you are doing
> > > this instead of just stating that you are doing this.
> > > 
> > > It's not that dev_err is uncommon in drivers/gpu/drm.
> > > 
> > 
> > It is uncommon (this is the sole instance) in rockchip, however. So it makes
> > sense to convert the dev_* prints in rockchip to DRM_DEV for consistency.
> > 
> > Wambui, could you also please convert the dev_warn instance as well?
> > 
> Hey, Sean.
> Trying to convert this dev_warn instance, but the corresponding DRM_WARN
> macro does not take the dev parameter which seems to be useful in the
> original output.
> Should I still convert it to DRM_WARN without the hdmi->dev parameter?

There exists DRM_DEV_ERROR, DRM_DEV_INFO and DRM_DEV_DEBUG to
handle actual devices. Interestingly there is no DRM_DEV_WARN though.

So depending on what Sean suggest another option would be to add the
missing DRM_DEV_WARN and then use it to replace the dev_warn.


Heiko



> 
> Thanks,
> wambui
> > I'll apply this to drm-misc-next and expand on the commit message a bit.
> > 
> > Thanks,
> > 
> > Sean
> > 
> > > $ git grep -w dev_err drivers/gpu/drm | wc -l
> > > 1950
> > > $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
> > > 756
> > > 
> > > > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > > []
> > > > @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> > > >  	}
> > > >  
> > > >  	if (!dsi->cdata) {
> > > > -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> > > > +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> > > >  		return -EINVAL;
> > > >  	}
> > > 
> > > 
> > > 
> > > _______________________________________________
> > > dri-devel mailing list
> > > dri-devel@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
