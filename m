Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B248EC97
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 15:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CMMzPIarPDkB8WAFKt1SQ6n/Sk4M0VG6CjokID2ljA=; b=YFMfVx5SI3ZWYz
	ysVfVCnlXrjup18M7LE8uN4Sg9hWITZ2saPv7goVLEwJrGk5XviM1H5A/8ujwvzpIWf9s8FaRvYTW
	jHctkhXjbkPO+yZzsp2Vh3MS1DS2Zqv49ncSbUkbXEAOjlCK7sJbq2p5tKbkxOG8mPSWC7/yz9zt+
	OVCtoIt/pamKZKBWqXc3TmIiZyBe6jhz+Ugrm3XdmwviPdO16BIVbQ4wRDtK5gB2THPass2U92Tnz
	n288zlI5w3vkCH1M9idRLO4BrgsgwIua/DcggCgufq0WGDblGbuLKkAQnEr6K+7TJBUpa023qYCU/
	8CaF7y3pSLEs3pxKg2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFf2-00060Y-DD; Thu, 15 Aug 2019 13:19:24 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFeh-0005jE-KH; Thu, 15 Aug 2019 13:19:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 06:18:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="171107427"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 06:18:53 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 1B0FC206FD; Thu, 15 Aug 2019 16:17:49 +0300 (EEST)
Date: Thu, 15 Aug 2019 16:17:49 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20190815131748.GS6133@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815082422.GM6133@paasikivi.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_061903_680889_4ADD6894 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Allon Huang <allon.huang@rock-chips.com>,
 Jacob Chen <cc@rock-chips.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 11:24:22AM +0300, Sakari Ailus wrote:
> Hi Helen,
> 
> On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
> 
> ...
> 
> > >> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> > >> +				 struct v4l2_subdev_pad_config *cfg,
> > >> +				 struct v4l2_subdev_format *fmt)
> > >> +{
> > >> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > >> +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> > >> +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> > >> +
> > > 
> > > Note that for sub-device nodes, the driver is itself responsible for
> > > serialising the access to its data structures.
> > 
> > But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> > ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> > most probably) ?
> 
> Good question. I had missed this change --- subdev_do_ioctl_lock() is
> relatively new. But setting that lock is still not possible as the struct
> is allocated in the framework and the device is registered before the
> driver gets hold of it. It's a good idea to provide the same serialisation
> for subdevs as well.
> 
> I'll get back to this later.

The main reason is actually that these ops are also called through the
sub-device kAPI, not only through the uAPI, and the locks are only taken
through the calls via uAPI.

So adding the locks to uAPI calls alone would not address the issue.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
