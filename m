Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F5B183458
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Mar 2020 16:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayoIItIc0MCu6Du8kQVV7WK1kcoDcWfc5thnw9sArqI=; b=bXb22DX+lPwPHU
	LfLf+gQH7AeViVkF7EyPttsnh8+BucOnJVrqxCjMM3gSG8pD6nG+yZo9/TNlJCi38UYcnGtmYLhPP
	iv/aAudy5Qo8ndi/RjB9TrWKcnxe5fxa5C9ziKtrDI7Ho9JJo6zLURLWx1pZ6T5PMgSDwaClqo2Yi
	36PQgX2GRucGQhDtxlvu2G+Z30oBjRYUJsnFOO7imNhnxA75RmJC+9fAliFlfdzj10SWmf+uE1LvJ
	d5Km6+KlxT86gaZNRYoLFZZagRtRrcHz41Iug7XgEW/CgEph5heREc1yciWbc+9y3SLT+zSTa4g2O
	MhJ2A1BcwONRFU9mVy3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPbv-0006PN-Ca; Thu, 12 Mar 2020 15:18:59 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPbr-0006Oq-Do
 for linux-rockchip@lists.infradead.org; Thu, 12 Mar 2020 15:18:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 08:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="415968848"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 12 Mar 2020 08:18:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jCPbl-000CKE-WF; Thu, 12 Mar 2020 23:18:49 +0800
Date: Thu, 12 Mar 2020 23:18:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 6/6] hantro: Refactor for V4L2 API spec compliancy
Message-ID: <202003122343.vMh2bMyj%lkp@intel.com>
References: <20200311174300.19407-7-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311174300.19407-7-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_081855_481421_276F89BC 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel@collabora.com, kbuild-all@lists.01.org,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linuxtv-media/master]
[also build test WARNING on v5.6-rc5 next-20200312]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Ezequiel-Garcia/hantro-set-of-small-cleanups-and-fixes/20200312-061234
base:   git://linuxtv.org/media_tree.git master
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-174-g094d5a94-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/staging/media/hantro/hantro_v4l2.c:282:44: sparse: sparse: incorrect type in argument 1 (different modifiers) @@    expected struct hantro_ctx *ctx @@    got structstruct hantro_ctx *ctx @@
>> drivers/staging/media/hantro/hantro_v4l2.c:282:44: sparse:    expected struct hantro_ctx *ctx
>> drivers/staging/media/hantro/hantro_v4l2.c:282:44: sparse:    got struct hantro_ctx const *ctx

vim +282 drivers/staging/media/hantro/hantro_v4l2.c

775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  234  
0f07bff2f08018 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  235  static int hantro_try_fmt(const struct hantro_ctx *ctx,
0f07bff2f08018 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  236  			  struct v4l2_pix_format_mplane *pix_mp,
0f07bff2f08018 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  237  			  enum v4l2_buf_type type)
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  238  {
5980d40276b36b drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2019-12-05  239  	const struct hantro_fmt *fmt, *vpu_fmt;
0f07bff2f08018 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  240  	bool capture = !V4L2_TYPE_IS_OUTPUT(type);
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  241  	bool coded;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  242  
a29add8c9bb29d drivers/staging/media/hantro/hantro_v4l2.c             Philipp Zabel   2019-06-12  243  	coded = capture == hantro_is_encoder_ctx(ctx);
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  244  
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  245  	vpu_debug(4, "trying format %c%c%c%c\n",
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  246  		  (pix_mp->pixelformat & 0x7f),
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  247  		  (pix_mp->pixelformat >> 8) & 0x7f,
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  248  		  (pix_mp->pixelformat >> 16) & 0x7f,
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  249  		  (pix_mp->pixelformat >> 24) & 0x7f);
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  250  
5980d40276b36b drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2019-12-05  251  	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  252  	if (!fmt) {
5980d40276b36b drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2019-12-05  253  		fmt = hantro_get_default_fmt(ctx, coded);
0f07bff2f08018 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  254  		pix_mp->pixelformat = fmt->fourcc;
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  255  	}
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  256  
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  257  	if (coded) {
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  258  		pix_mp->num_planes = 1;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  259  		vpu_fmt = fmt;
a29add8c9bb29d drivers/staging/media/hantro/hantro_v4l2.c             Philipp Zabel   2019-06-12  260  	} else if (hantro_is_encoder_ctx(ctx)) {
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  261  		vpu_fmt = ctx->vpu_dst_fmt;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  262  	} else {
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  263  		vpu_fmt = ctx->vpu_src_fmt;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  264  		/*
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  265  		 * Width/height on the CAPTURE end of a decoder are ignored and
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  266  		 * replaced by the OUTPUT ones.
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  267  		 */
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  268  		pix_mp->width = ctx->src_fmt.width;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  269  		pix_mp->height = ctx->src_fmt.height;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  270  	}
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  271  
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  272  	pix_mp->field = V4L2_FIELD_NONE;
0a4f091c12b3ea drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Boris Brezillon 2019-05-28  273  
0a4f091c12b3ea drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Boris Brezillon 2019-05-28  274  	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  275  				       &vpu_fmt->frmsize);
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  276  
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  277  	if (!coded) {
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  278  		/* Fill remaining fields */
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  279  		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  280  				    pix_mp->height);
8c2d66b036c778 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2019-12-05  281  		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
042584e9055b61 drivers/staging/media/hantro/hantro_v4l2.c             Philipp Zabel   2020-01-27 @282  		    !hantro_needs_postproc(ctx, fmt))
a9471e25629b02 drivers/staging/media/hantro/hantro_v4l2.c             Hertz Wong      2019-08-16  283  			pix_mp->plane_fmt[0].sizeimage +=
6574b7394c10e2 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  284  				hantro_h264_mv_size(pix_mp->width,
6574b7394c10e2 drivers/staging/media/hantro/hantro_v4l2.c             Ezequiel Garcia 2020-03-11  285  						    pix_mp->height);
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  286  	} else if (!pix_mp->plane_fmt[0].sizeimage) {
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  287  		/*
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  288  		 * For coded formats the application can specify
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  289  		 * sizeimage. If the application passes a zero sizeimage,
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  290  		 * let's default to the maximum frame size.
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  291  		 */
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  292  		pix_mp->plane_fmt[0].sizeimage = fmt->header_size +
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  293  			pix_mp->width * pix_mp->height * fmt->max_depth;
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  294  	}
953aaa1492c538 drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c Boris Brezillon 2019-05-28  295  
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  296  	return 0;
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  297  }
775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_enc.c  Ezequiel Garcia 2018-12-05  298  

:::::: The code at line 282 was first introduced by commit
:::::: 042584e9055b615ac917239884fb0d65690f56ec media: hantro: fix extra MV/MC sync space calculation

:::::: TO: Philipp Zabel <p.zabel@pengutronix.de>
:::::: CC: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
