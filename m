Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1463F5E99
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 12:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpNZ4DfMRtg8cgMEeGZw4/aAIdcKjBsMhSBXoiT/OAQ=; b=JckcOY8csnQ9xD
	VoacJjmoBS5OtZjDFfyHjPC+56qh/L5vrfqjFtckgh3sefXkWsh5RwX9YQjrHSvGgYUwi8MyUp+xE
	5Euspse9sLV/rrX3en3ubdnCIUadCsSbI0gHHWWzGEEyed9vL82BO93MAzpU8lYaH6hXMd4JRwi/T
	ffMnbnOyMwhlK+C6PqUAZg+Bmsee3N+NYEqb7viUwKWiJ6Qqhzfriu7WOiun6a8mzR0jP9ysh0mIb
	i8+7KlwyA4TA6DtvouXjhba91CMZL44wAsfwi+QOAkmOdwbMyi/jCG1jXVI5UlJm9qgSuSfataMbB
	FrfzYVrFDR5uOKoNGJYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTObK-00071d-Nx; Sat, 09 Nov 2019 11:08:18 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTObA-0006tg-Q7; Sat, 09 Nov 2019 11:08:10 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id TOb3iwTk7PMT8TOb6iPBE6; Sat, 09 Nov 2019 12:08:05 +0100
Subject: Re: [PATCH] media: rockchip/rga: fix potential use after free
To: Pan Bian <bianpan2016@163.com>, Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <1572969354-8967-1-git-send-email-bianpan2016@163.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e89f6a90-4899-0945-e11a-67be6a28e7c0@xs4all.nl>
Date: Sat, 9 Nov 2019 12:08:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572969354-8967-1-git-send-email-bianpan2016@163.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAEIQNDj0MrkNwMDONLTaAveOQTV90nc/m7292hp5RhbHodvPvVOF7YABtpCI5/hudEn1y22ZqA+1Zv8Q5vySCxJngJ6HhmqrH0G4Pbt7P+WOd0lz5Y4
 63/JBeAViow65qolHk+fGi3DH5TAgkFqMuZyXAoygqjBxjI/S2NCX4SYVCL5wvIpNseOd29oQlXoTF6BPxGwODycBm/YXesDN/5rRDPxhPSdkdkx6ze4KaX/
 rIRLjaZ0DUHD0Q5blMv6aM+rE2gn/llYsl1ETROOdfA3aHM7GZ/aBax1Vb5CFJfB/rFttkCOqDlGu0X+fH53RGgAg4cza3jzMzgoxrlYQ+9534j/mKlg7JcY
 X5BUCQK0PuMiecZaAZ4JadtiuegxK/ePgPiemh52wAr2qxgako0xpEPjqnh2HHDBtVfIUhF5tV0O+mDwtS3ikCxbAjMRyQUywTz2KwIoccd+y/+sjuoIwD+3
 MfVUAq0p1Ft5fY6e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_030809_007742_1B0C3467 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 11/5/19 4:55 PM, Pan Bian wrote:
> The variable vga->vfd is an alias for vfd. Therefore, releasing vfd and
> then unregister vga->vfd will lead to a use after free bug. In fact, the
> free operation and the unregister operation are reversed.
> 
> Signed-off-by: Pan Bian <bianpan2016@163.com>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b5bb..613b868fce33 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -901,9 +901,9 @@ static int rga_probe(struct platform_device *pdev)
>  	return 0;
>  
>  rel_vdev:
> -	video_device_release(vfd);
> -unreg_video_dev:
>  	video_unregister_device(rga->vfd);
> +unreg_video_dev:
> +	video_device_release(vfd);
>  unreg_v4l2_dev:
>  	v4l2_device_unregister(&rga->v4l2_dev);
>  err_put_clk:
> 

This isn't right, you need to update the goto labels as well.

With this change unreg_video_dev releases the vdev, while rel_vdev
unregisters it. Very confusing.

I'd also rename unreg_video_dev to unreg_vdev to be consistent with
rel_vdev.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
