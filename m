Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4D218854C
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 14:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPboDNfWzQ5837334Pa8sedC0vj25pHCEYesWTcR28Y=; b=FS0QyguBXSnvPQ
	SAPteJ9FHa2bUxtznmEiSzaYbJgjDNnDGtRwCGefjL/eyD4sYQZQvsKCYlsEu/gaUugxQ5zrW34aE
	5DqgERfwoEH+oTr6+CzLV584jwp85QVT4lNEobX48js3WosquNCQ7KacSCUVNgyGyDIzq4/A2OlHM
	y128YRer7cJN9/f3cD1M65kEZjZHdS9W6rrFGYX3AEK8K0V1mae2q0ryPnC4qdowujQxWJSU46UjG
	ouaLeBrhS/NOo3ED1rZFdqm75VOlpAvfv5UeJ8OoG3u2yhC/59edIA7/XvDz+JUJn4LnO6rZp1LkR
	VdEsKfeUtz5GBGtNrg1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEC9j-00085e-HE; Tue, 17 Mar 2020 13:21:15 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEC9f-00085I-8K
 for linux-rockchip@lists.infradead.org; Tue, 17 Mar 2020 13:21:13 +0000
IronPort-SDR: DhZmwGMQKPnuKJuyziLmttFNleMn+DNBwXwnWE+BvnByz2BQf/MYfAjY6sl63rerq01EkeQo0q
 wtCNfKHN0PxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:21:10 -0700
IronPort-SDR: I6RBS4AY4CngXUTdEmkIJuxERESAunwcXO28WfwHWXz67UgmgusaJYzbnkhF2nJKzcTkvvp+HF
 4balnQVs1KtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="279390456"
Received: from rosenste-mobl.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.41.149])
 by fmsmga002.fm.intel.com with ESMTP; 17 Mar 2020 06:21:07 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 7AA5121DEC; Tue, 17 Mar 2020 15:20:38 +0200 (EET)
Date: Tue, 17 Mar 2020 15:20:38 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 2/2] media: staging: rkisp1: replace the call to
 v4l2_async_notifier_parse_fwnode_endpoints_by_port
Message-ID: <20200317132038.GD13878@kekkonen.localdomain>
References: <20200312154604.24996-1-dafna.hirschfeld@collabora.com>
 <20200312154604.24996-3-dafna.hirschfeld@collabora.com>
 <89b1c5e1-4659-b489-25d1-a8278949c048@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89b1c5e1-4659-b489-25d1-a8278949c048@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_062111_806313_0494A4CA 
X-CRM114-Status: GOOD (  30.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Tue, Mar 17, 2020 at 10:12:22AM -0300, Helen Koike wrote:
> Hi Dafna,
> 
> On 3/12/20 12:46 PM, Dafna Hirschfeld wrote:
> > don't call 'v4l2_async_notifier_parse_fwnode_endpoints_by_port'
> > in order to register async subdevices. Instead call
> > 'v4l2_fwnode_endpoint_parse' to parse the remote endpoints
> > and then register each async subdev with
> > 'v4l2_async_notifier_add_fwnode_remote_subdev'
> > 
> > Also remove the relevant item in the TODO file
> > 
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> 
> It would be nice to have a changelog here as well.
> 
> >  drivers/staging/media/rkisp1/TODO         |  3 -
> >  drivers/staging/media/rkisp1/rkisp1-dev.c | 94 +++++++++++++----------
> >  2 files changed, 55 insertions(+), 42 deletions(-)
> > 
> > diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> > index 0aa9877dd64a..1aa3bb9fd6cb 100644
> > --- a/drivers/staging/media/rkisp1/TODO
> > +++ b/drivers/staging/media/rkisp1/TODO
> > @@ -1,6 +1,3 @@
> > -* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
> > -e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
> > -cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
> >  * Fix pad format size for statistics and parameters entities.
> >  * Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
> >  * Fix checkpatch errors.
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > index d2186856bb24..1035a39f3e49 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > @@ -233,35 +233,6 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
> >  	return 0;
> >  }
> >  
> > -static int rkisp1_fwnode_parse(struct device *dev,
> > -			       struct v4l2_fwnode_endpoint *vep,
> > -			       struct v4l2_async_subdev *asd)
> > -{
> > -	struct rkisp1_sensor_async *s_asd =
> > -			container_of(asd, struct rkisp1_sensor_async, asd);
> > -
> > -	if (vep->bus_type != V4L2_MBUS_CSI2_DPHY) {
> > -		dev_err(dev, "Only CSI2 bus type is currently supported\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	if (vep->base.port != 0) {
> > -		dev_err(dev, "The ISP has only port 0\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	s_asd->mbus_type = vep->bus_type;
> > -	s_asd->lanes = vep->bus.mipi_csi2.num_data_lanes;
> > -
> > -	/* Parallel bus is currently not supported */
> > -	s_asd->parallel_bus_flags = 0;
> > -
> > -	if (s_asd->lanes < 1 || s_asd->lanes > 4)
> > -		return -EINVAL;
> > -
> > -	return 0;
> > -}
> > -
> >  static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
> >  	.bound = rkisp1_subdev_notifier_bound,
> >  	.unbind = rkisp1_subdev_notifier_unbind,
> > @@ -271,23 +242,68 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
> >  static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
> >  {
> >  	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
> > -	struct device *dev = rkisp1->dev;
> > +	int next_id = 0;
> 
> This is endpoint id right?
> Maybe just change it to unsigned.
> 
> The scope says it should be u32:
> 
> struct fwnode_handle *
> fwnode_graph_get_endpoint_by_id(const struct fwnode_handle *fwnode,
> 				u32 port, u32 endpoint, unsigned long flags)
> 
> 
> >  	int ret;
> >  
> >  	v4l2_async_notifier_init(ntf);
> >  
> > -	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(dev, ntf,
> > -					sizeof(struct rkisp1_sensor_async),
> > -					0, rkisp1_fwnode_parse);
> > -	if (ret)
> > -		return ret;
> > +	while (1) {
> > +		struct v4l2_fwnode_endpoint vep = {
> > +			.bus_type = V4L2_MBUS_CSI2_DPHY
> > +		};
> > +		struct rkisp1_sensor_async *rk_asd = NULL;
> > +		struct fwnode_handle *ep;
> >  
> > -	if (list_empty(&ntf->asd_list))
> > -		return -ENODEV;
> > +		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
> > +			0, next_id, FWNODE_GRAPH_ENDPOINT_NEXT);
> >  
> 
> Please, remove this new line, so the error check is near the function which generated it.
> 
> > -	ntf->ops = &rkisp1_subdev_notifier_ops;
> > +		if (!ep)
> > +			break;
> > +
> > +		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
> > +		if (ret)
> > +			goto err_parse;
> > +
> > +		rk_asd = kzalloc(sizeof(*rk_asd), GFP_KERNEL);
> > +		if (!rk_asd) {
> > +			ret = -ENOMEM;
> > +			goto err_parse;
> > +		}
> > +
> > +		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
> > +		rk_asd->mbus_type = vep.bus_type;
> > +
> > +		/* Parallel bus is currently not supported */
> > +		rk_asd->parallel_bus_flags = 0;
> 
> Please see my comment in previous patch of this series.
> 
> > +		ret = v4l2_async_notifier_add_fwnode_remote_subdev(ntf, ep,
> > +								   &rk_asd->asd);
> > +		if (ret)
> > +			goto err_parse;
> > +
> > +		dev_dbg(rkisp1->dev, "registered ep id %d with %d lanes\n",
> > +			vep.base.id, rk_asd->lanes);
> > +
> > +		next_id = vep.base.id + 1;
> > +
> > +		fwnode_handle_put(ep);
> >  
> > -	return v4l2_async_notifier_register(&rkisp1->v4l2_dev, ntf);
> > +		continue;
> > +err_parse:
> > +		fwnode_handle_put(ep);
> > +		kfree(rk_asd);
> > +		v4l2_async_notifier_cleanup(ntf);
> > +		return ret;
> 
> Question:
> 
> If parsing one endpoint fails, should you:
> 
> 1) Parse all the other endpoints and ignore the one which fails?
> 2) Cleanup and free all the other endpoints?
> 
> In any case, this code is just stopping in the first one that fails and not
> cleaning up the previous one, so it is not doing any of the previous
> behaviors.
> 
> I see that ipu3-cio2.c does the same. Sakari, could you comment on this?

v4l2_async_notifier_cleanup() releases the memory allocated above so this
is fine as far as I see.

Alternatively the bad ones could be just ignored (and complained about),
but doing something drastic about such bugs usually gets the deserved
attention.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
