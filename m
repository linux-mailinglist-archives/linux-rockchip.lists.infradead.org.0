Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ADDF178D
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 14:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj86CNSMZ6kkLu0FDDpN1OCYeZ2T0f3tTNOjbrtSeW0=; b=bZCR+OxmFVDs8d
	FvYggELapIZvzixQNJ3XuRrFDt5WVAi2LiB06cQaiPHQTAKZI0xwA1XKRDDLwJPrwr5vy7PVlQHXN
	/zBeheaApNYFW3k+vSTHs3zrN+UZUS3hfoFptTgku4iKMKJh4yct7lfjf49gtsKaTBAKJT3m3fi99
	JFsVcbjj9f7lthAO6sSplFXt8a2WsTjmfOtGFnudtIZaKfPkAVFmII3xaaRGbf0RPiHzkkxIFeFGv
	PI0xpT7fTdAOIROc2/RBT3bPjZt4mf6w5n0m65YbeuoyFW3D5YLaSJTP7q2j1BG1eNzcs4wVUDOXI
	3CxfW8aQMxsv0cz/cOgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLca-0005iy-FL; Wed, 06 Nov 2019 13:45:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLcH-0004Gw-4W; Wed, 06 Nov 2019 13:44:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DB34B26D9C0
Message-ID: <b1a8fa60a3c8922c364a18b0583dab55660f2fb4.camel@collabora.com>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, "Hans Verkuil (hansverk)"
 <hansverk@cisco.com>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Date: Wed, 06 Nov 2019 10:44:43 -0300
In-Reply-To: <28cff7ab-ef56-791e-0342-571f64cb9807@collabora.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
 <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
 <28cff7ab-ef56-791e-0342-571f64cb9807@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_054457_443732_E03F41BD 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "eddie.cai.linux@gmail.com" <eddie.cai.linux@gmail.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "zyc@rock-chips.com" <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "zhengsq@rock-chips.com" <zhengsq@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Hans, Helen:

On Wed, 2019-11-06 at 09:30 -0300, Helen Koike wrote:
> 
> On 11/6/19 10:22 AM, Hans Verkuil (hansverk) wrote:
> > On 11/6/19 1:01 PM, Helen Koike wrote:
> > > From: Shunqian Zheng <zhengsq@rock-chips.com>
> > > 
> > > Add the Rockchip ISP1 specific processing parameter format
> > > V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> > > V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> > > 
> > > Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> > > Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> > > Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
> > 
> > I acked this? It is missing documentation for these new formats.
> 
> I think so https://www.spinics.net/lists/linux-rockchip/msg18999.html :)
> 
> I'll update the docs and the fixes you pointed below.
> 
> Thanks.
> Helen
> 
> > > [refactored for upstream]
> > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > 
> > > ---
> > > 
> > > Changes in v9:
> > > - Add reviewed-by tag from Laurent
> > > 
> > > Changes in v8: None
> > > Changes in v7:
> > > - s/IPU3/RK_ISP1
> > > 
> > >  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
> > >  include/uapi/linux/videodev2.h       | 4 ++++
> > >  2 files changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> > > index 315ac12c3e0a..ade990554caf 100644
> > > --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> > > +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> > > @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
> > >  	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
> > >  	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
> > >  	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> > > +	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;
> > 
> > params -> Params
> > 
> > > +	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;
> > 
> > statistics -> Statistics
> > 
> > >  
> > >  	default:
> > >  		/* Compressed formats */
> > > diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> > > index f98bbcced8ff..56798b09cd85 100644
> > > --- a/include/uapi/linux/videodev2.h
> > > +++ b/include/uapi/linux/videodev2.h

Can we avoid touching videodev2.h, as we did for the stateless codec pixfmts?

Thanks,
Ezequiel

> > > @@ -762,6 +762,10 @@ struct v4l2_pix_format {
> > >  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
> > >  #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
> > >  
> > > +/* Vendor specific - used for RK_ISP1 camera sub-system */
> > > +#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> > > +#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> > > +
> > >  /* priv field value to indicates that subsequent fields are valid. */
> > >  #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
> > >  
> > > 
> > 
> > Regards,
> > 
> > 	Hans
> > 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
