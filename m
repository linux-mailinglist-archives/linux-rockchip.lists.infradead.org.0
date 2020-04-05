Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA0F19ED2A
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 19:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ABf45ZfcmSkyUgrZwjaqcN97xnSn8NYd24ZeZFErQ4=; b=QxfHuoDWIH8tIm
	fs7xUmE+9aDNPQyCOhGkiFtzEOGu3yMqgYyRDNSebI0jeQjdVi63n+AJAzgjV/78Hdq47m4RCT6+O
	Cyn4PDC9BcFqdkItV0UjfC7v86KhVTn8852zjuI10dkyfPnzWFkVKau9oksZNfT3m5aKbHurLgFgm
	YJbA5RrdZXbns0Ei6J9ovjw8H2UY3+sCozCgJXWxKVKTPjRzniiRm8pocfBVK/U4u2pXJGSNMHNvX
	q05NUB/5PNpD5Ana/m7TS3bS0JF6Fi5B1ogHY3HtsfpwEG+dTPHOyC1p3YcQzRdQj0Ls38KIUK/qu
	LdeIDhmQG7mt/AjEkdrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Ty-0006DK-MO; Sun, 05 Apr 2020 17:54:54 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Tv-0006CL-Qa
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 17:54:53 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E56E8312;
 Sun,  5 Apr 2020 19:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586109290;
 bh=epgX/HDxiIsue+BQXRMXKPCi2Z7zbUY5UANTohvWR0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UEBpbKmn+thtRAODm7LEKFSe4KaacZr+rj64Ap11EzPWzOnfDXneJe5FM8vtPWb/G
 YJ87nR8X0Mqm0XpH3CuFbmz5F16uZzzRaRD/9eRN7wNRUBJYvXLuolOhy26HSTgqbf
 mRyReUN9qH8WeALpsacOiJ0MtU0bN90xATkDaYTs=
Date: Sun, 5 Apr 2020 20:54:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 2/2] media: staging: rkisp1: cap: remove field
 fmt_type from struct rkisp1_capture_fmt_cfg
Message-ID: <20200405175440.GM5846@pendragon.ideasonboard.com>
References: <20200403092738.29831-1-dafna.hirschfeld@collabora.com>
 <20200403092738.29831-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403092738.29831-3-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_105452_009356_8BB9890E 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Fri, Apr 03, 2020 at 11:27:38AM +0200, Dafna Hirschfeld wrote:
> The pixel encoding can be retrieved from the cap->pix.info.
> Therefore the field fmt_type can be removed from the
> struct rkisp1_capture_fmt_cfg.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 51 +------------------
>  1 file changed, 2 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 8e8ea7ed8de3..0bef5faf068e 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -52,7 +52,6 @@ enum rkisp1_plane {
>   */
>  struct rkisp1_capture_fmt_cfg {
>  	u32 fourcc;
> -	u8 fmt_type;
>  	u8 uv_swap;
>  	u32 write_format;
>  	u32 output_format;
> @@ -87,133 +86,106 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  	/* yuv422 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_YUYV,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV16,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV61,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	},
>  	/* yuv420 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV21,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV21M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV420,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU420,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	},
>  	/* yuv444 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_YUV444M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	},
>  	/* yuv400 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_GREY,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	},
>  	/* raw */
>  	{
>  		.fourcc = V4L2_PIX_FMT_SRGGB8,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG8,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG8,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR8,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SRGGB10,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG10,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG10,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR10,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SRGGB12,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGRBG12,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SGBRG12,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_SBGGR12,
> -		.fmt_type = V4L2_PIXEL_ENC_BAYER,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_RAW12,
>  	},
>  };
> @@ -222,43 +194,36 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	/* yuv422 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_YUYV,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV16,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV61,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU422M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> @@ -266,37 +231,31 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	/* yuv420 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV21,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV21M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_NV12M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_SPLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV420,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YVU420,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 1,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
> @@ -304,7 +263,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	/* yuv444 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_YUV444M,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV444,
> @@ -312,7 +270,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	/* yuv400 */
>  	{
>  		.fourcc = V4L2_PIX_FMT_GREY,
> -		.fmt_type = V4L2_PIXEL_ENC_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
> @@ -320,17 +277,14 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  	/* rgb */
>  	{
>  		.fourcc = V4L2_PIX_FMT_RGB24,
> -		.fmt_type = V4L2_PIXEL_ENC_RGB,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_RGB565,
> -		.fmt_type = V4L2_PIXEL_ENC_RGB,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_BGR666,
> -		.fmt_type = V4L2_PIXEL_ENC_RGB,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
>  	},
> @@ -504,13 +458,12 @@ static void rkisp1_sp_disable(struct rkisp1_capture *cap)
>  
>  static void rkisp1_mp_enable(struct rkisp1_capture *cap)
>  {
> -	const struct rkisp1_capture_fmt_cfg *isp_fmt = cap->pix.cfg;
>  	u32 mi_ctrl;
>  
>  	rkisp1_mp_disable(cap);
>  
>  	mi_ctrl = rkisp1_read(cap->rkisp1, RKISP1_CIF_MI_CTRL);
> -	if (isp_fmt->fmt_type == V4L2_PIXEL_ENC_BAYER)
> +	if (v4l2_is_format_bayer(cap->pix.info))
>  		mi_ctrl |= RKISP1_CIF_MI_CTRL_RAW_ENABLE;
>  	/* YUV */
>  	else
> @@ -1265,7 +1218,7 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  		return -EPIPE;
>  	}
>  
> -	if (cap->pix.cfg->fmt_type != isp->src_fmt->fmt_type) {
> +	if (cap->pix.info->pixel_enc != isp->src_fmt->fmt_type) {
>  		dev_err(cap->rkisp1->dev,
>  			"format type mismatch in link '%s:%d->%s:%d'\n",
>  			link->source->entity->name, link->source->index,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
