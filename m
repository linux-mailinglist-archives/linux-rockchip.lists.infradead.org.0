Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D717B32C
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 01:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7pJNyTnnvPX+PkKIaq1YBLtNXw0kr+HJq2AWb8qt4yY=; b=T81igvgSIgYKLd2wNZkkjasVZ
	gMkdHTun3UYH3byqBb/mfEOCsSP7lTPK3RM3fA+cjlKZOv3wmIYU8yN+dt0+ehjTH2/t6QxxA4y3i
	9QBOt8ulDPHyItS6XtUSPDzZYTJFtLwsYyrgrx5hbiOe3cYmG0biOnbYI0rNosPxu8Sob0w+dw/KH
	dpWzaoyFRQx1SdGSobmcktBP+Yyyxm1QRoXf1sp+XMNZ9TAWL1vuiqegdnKAQ8Si9FM8mBG5woKOG
	TOWvg/ODjSqqoStr+AHS8RnxEWreE+wpgLx5p522YyZkyjE5xQzoKjIhes95uLQskAbLYCguzUGwJ
	Sec/ITPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1Gn-0003fB-0N; Fri, 06 Mar 2020 00:55:17 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1Gi-0003eE-R1; Fri, 06 Mar 2020 00:55:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 16:55:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,520,1574150400"; 
 d="gz'50?scan'50,208,50";a="287831868"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Mar 2020 16:54:58 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jA1GT-000HU8-VS; Fri, 06 Mar 2020 08:54:57 +0800
Date: Fri, 6 Mar 2020 08:54:19 +0800
From: kbuild test robot <lkp@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH 21/22] drm/writeback: Use simple encoder
Message-ID: <202003060840.Zf3Omskz%lkp@intel.com>
References: <20200305155950.2705-22-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
In-Reply-To: <20200305155950.2705-22-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_165513_015815_B87D32EA 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 airlied@linux.ie, stefan@agner.ch, linux@armlinux.org.uk, paul@crapouillou.net,
 eric@anholt.net, thierry.reding@gmail.com, krzk@kernel.org, sam@ravnborg.org,
 sebastian.reichel@collabora.com, linux-samsung-soc@vger.kernel.org,
 kraxel@redhat.com, jy0922.shim@samsung.com, hjc@rock-chips.com,
 festevam@gmail.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, Thomas Zimmermann <tzimmermann@suse.de>,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, inki.dae@samsung.com,
 john.stultz@linaro.org, jsarha@ti.com, matthias.bgg@gmail.com, wens@csie.org,
 kernel@pengutronix.de, jernej.skrabec@siol.net, kbuild-all@lists.01.org,
 rodrigosiqueiramelo@gmail.com, tomi.valkeinen@ti.com, bbrezillon@kernel.org,
 jingoohan1@gmail.com, dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com,
 nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Thomas,

I love your patch! Yet something to improve:

[auto build test ERROR on next-20200305]
[cannot apply to rockchip/for-next shawnguo/for-next sunxi/sunxi/for-next tegra/for-next linus/master v5.6-rc4 v5.6-rc3 v5.6-rc2 v5.6-rc4]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Thomas-Zimmermann/drm-Convert-drivers-to-drm_simple_encoder_init/20200306-045931
base:    47466dcf84ee66a973ea7d2fca7e582fe9328932
config: x86_64-defconfig (attached as .config)
compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/drm_writeback.c: In function 'drm_writeback_connector_init':
>> drivers/gpu/drm/drm_writeback.c:191:8: error: implicit declaration of function 'drm_simple_encoder_init'; did you mean 'drm_encoder_init'? [-Werror=implicit-function-declaration]
     ret = drm_simple_encoder_init(dev, &wb_connector->encoder,
           ^~~~~~~~~~~~~~~~~~~~~~~
           drm_encoder_init
   cc1: some warnings being treated as errors

vim +191 drivers/gpu/drm/drm_writeback.c

   149	
   150	/**
   151	 * drm_writeback_connector_init - Initialize a writeback connector and its properties
   152	 * @dev: DRM device
   153	 * @wb_connector: Writeback connector to initialize
   154	 * @con_funcs: Connector funcs vtable
   155	 * @enc_helper_funcs: Encoder helper funcs vtable to be used by the internal encoder
   156	 * @formats: Array of supported pixel formats for the writeback engine
   157	 * @n_formats: Length of the formats array
   158	 *
   159	 * This function creates the writeback-connector-specific properties if they
   160	 * have not been already created, initializes the connector as
   161	 * type DRM_MODE_CONNECTOR_WRITEBACK, and correctly initializes the property
   162	 * values. It will also create an internal encoder associated with the
   163	 * drm_writeback_connector and set it to use the @enc_helper_funcs vtable for
   164	 * the encoder helper.
   165	 *
   166	 * Drivers should always use this function instead of drm_connector_init() to
   167	 * set up writeback connectors.
   168	 *
   169	 * Returns: 0 on success, or a negative error code
   170	 */
   171	int drm_writeback_connector_init(struct drm_device *dev,
   172					 struct drm_writeback_connector *wb_connector,
   173					 const struct drm_connector_funcs *con_funcs,
   174					 const struct drm_encoder_helper_funcs *enc_helper_funcs,
   175					 const u32 *formats, int n_formats)
   176	{
   177		struct drm_property_blob *blob;
   178		struct drm_connector *connector = &wb_connector->base;
   179		struct drm_mode_config *config = &dev->mode_config;
   180		int ret = create_writeback_properties(dev);
   181	
   182		if (ret != 0)
   183			return ret;
   184	
   185		blob = drm_property_create_blob(dev, n_formats * sizeof(*formats),
   186						formats);
   187		if (IS_ERR(blob))
   188			return PTR_ERR(blob);
   189	
   190		drm_encoder_helper_add(&wb_connector->encoder, enc_helper_funcs);
 > 191		ret = drm_simple_encoder_init(dev, &wb_connector->encoder,
   192					      DRM_MODE_ENCODER_VIRTUAL);
   193		if (ret)
   194			goto fail;
   195	
   196		connector->interlace_allowed = 0;
   197	
   198		ret = drm_connector_init(dev, connector, con_funcs,
   199					 DRM_MODE_CONNECTOR_WRITEBACK);
   200		if (ret)
   201			goto connector_fail;
   202	
   203		ret = drm_connector_attach_encoder(connector,
   204							&wb_connector->encoder);
   205		if (ret)
   206			goto attach_fail;
   207	
   208		INIT_LIST_HEAD(&wb_connector->job_queue);
   209		spin_lock_init(&wb_connector->job_lock);
   210	
   211		wb_connector->fence_context = dma_fence_context_alloc(1);
   212		spin_lock_init(&wb_connector->fence_lock);
   213		snprintf(wb_connector->timeline_name,
   214			 sizeof(wb_connector->timeline_name),
   215			 "CONNECTOR:%d-%s", connector->base.id, connector->name);
   216	
   217		drm_object_attach_property(&connector->base,
   218					   config->writeback_out_fence_ptr_property, 0);
   219	
   220		drm_object_attach_property(&connector->base,
   221					   config->writeback_fb_id_property, 0);
   222	
   223		drm_object_attach_property(&connector->base,
   224					   config->writeback_pixel_formats_property,
   225					   blob->base.id);
   226		wb_connector->pixel_formats_blob_ptr = blob;
   227	
   228		return 0;
   229	
   230	attach_fail:
   231		drm_connector_cleanup(connector);
   232	connector_fail:
   233		drm_encoder_cleanup(&wb_connector->encoder);
   234	fail:
   235		drm_property_blob_put(blob);
   236		return ret;
   237	}
   238	EXPORT_SYMBOL(drm_writeback_connector_init);
   239	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMqOYV4AAy5jb25maWcAlDzbctw2su/5iqnkJaktZ2VbVnx2Sw8gCXKQIQkaAOeiF5Yi
jx3V2pJ3JO3af3+6AV4aIKh1trZiDbpx73s3+NMPP63Y0+P95+vH25vrT5++rT4e746n68fj
+9WH20/Hf64yuaqlWfFMmF8Buby9e/r6969vL7qL89WbXy9+PXtxujlfbY6nu+OnVXp/9+H2
4xP0v72/++GnH+D/P0Hj5y8w1Okfq483Ny9+W/2cHf+4vb5b/fbrG+j95hf3B6Cmss5F0aVp
J3RXpOnlt6EJfnRbrrSQ9eVvZ2/OzkbcktXFCDojQ6Ss7kpRb6ZBoHHNdMd01RXSyChA1NCH
z0A7puquYoeEd20tamEEK8UVzyZEod51O6nIdEkrysyIineGJSXvtFRmgpq14iyD+XIJ/wEU
jV3teRX2Bj6tHo6PT1+mY8FpO15vO6YK2FklzOXrV3i8/Upl1QiYxnBtVrcPq7v7Rxxh6F3K
lJXDOf3449SPAjrWGhnpbLfSaVYa7No3rtmWdxuual52xZVopr1RSAKQV3FQeVWxOGR/tdRD
LgHOJ4C/pnGjdEF0jyECLus5+P7q+d7yefB55HwznrO2NN1aalOzil/++PPd/d3xl/Gs9Y6R
89UHvRVNOmvAf1NTTu2N1GLfVe9a3vJ469RlXOmOmXTdWWhkqamSWncVr6Q6dMwYlq6nkVvN
S5FMv1kLUiO4MaZgdAvAqVlZBuhTq2UG4KvVw9MfD98eHo+fJ2YoeM2VSC3bNUomZHsUpNdy
F4fwPOepEbigPAfW1ps5XsPrTNSWt+ODVKJQzCBHeXIgkxUT0bZuLbjCEzjMB6y0iM/UA6LD
WpisqnZhgcwouGs4T+ByI1UcS3HN1dZupKtkxv0pcqlSnvUCC46DkF3DlOb9okf6oSNnPGmL
XPsccbx7v7r/ENzsJNBlutGyhTkdJWaSzGiJh6KgUCTSmkC2IKEzZnhXMm269JCWERqx4nk7
I8QBbMfjW14b/SywS5RkWQoTPY9WAQWw7Pc2ildJ3bUNLnmgfXP7+Xh6iJG/EemmkzUH+iZD
1bJbX6EiqCxFjjcCjQ3MITORRjja9RKZPZ+xj2vN27Jc6kL4WhRrJCJ7nErbYfpLnm1hmqFR
nFeNgcHqmKAZwFtZtrVh6kBX1wNpN2dqNO3fzfXDv1aPMO/qGtbw8Hj9+LC6vrm5f7p7vL37
GJwhdOhYmkqYwpH2OMVWKBOA8a6iwh1J3ZLShBvTojpDWZVyEKCAaOhsIazbvo6MgFaCNoxS
IzYBm5XsMIxJAftIm5ALO260iDLqdxzqyIBwXkLLchCK9lJU2q50hIbhDjuA0SXAz47vgVhj
Jox2yLS734S94XjKcuIBAqk5SDHNizQphTaUSP0FkmvduD/id75ZgzwEco8aW2gz5aB+RG4u
X76l7XhEFdtT+KuJ5kVtNmBo5Twc47WnRNta90ZluoZdWRkzHLe++fP4/gns7dWH4/Xj0+n4
YJv7vUagnnDVbdOAoaq7uq1YlzCwr1NP6FusHasNAI2dva0r1nSmTLq8bDUxB3rjGfb08tXb
YIRxnhE6iR5v5pgNUijZNpr2AYMkjd9TUm76DosjuVOcFpgzoTofMpnZOUh7Vmc7kZl1dEIQ
G6RvFKWfthGZfg6uMt8S9aE5MMAVV97iHGTdFhyuI9a1ARONig+UObiOHhIZLONbkUYtQQeH
jqEwG7bHVf7c9qxxENMuYAGDaQGykFiWSJFU7KG0pQ1o/tYeScB+FDTFVAvsl/atuQn6ws2l
m0YCbaJeA8OJRzfiuA+dphmBTTgHDSSTcVBZYIL5BDFQDIpv4jiWKNG31rZR1MXE36yC0ZyJ
Q3wxlQUuGDQEnhe0+A4XNFA/y8Jl8Pvc01FSgkacScSJ2WUD1wJuMZqM9valqoCJPbsiRNPw
R0zWB56Mk3oie3nheT2AA/oi5Y21XeF0Uh70aVLdbGA1oJJwOeSUm5yua1HrBJNW4KcJJC2y
DuA2dCC6mR3p7n7WnK9BgJQzj2y0njxtEP7u6krQIAMRzbzM4X4UHXhx9wwMd7TuyKpaw/fB
T2AVMnwjvc2JomZlTgjUboA2WLOXNug1CGqiCQQhOLBLWuWrmmwrNB/Oj5wMDJIwpQS9hQ2i
HCqPjYc2dIAiVzuBE7BZYL9ItCDP5oO680I+RZfRY4omHxYYmWFSloOLj/i/C09cIjVZYB4T
DnYIVKPTpmHCOg1uGhwxzwsDZJ5lUXHj+ALm7EbXxloIfQyvOZ4+3J8+X9/dHFf8P8c7sPQY
2A4p2npgy08GnD/EOLMV6w4IO+u2lfU+o5bld844TLit3HSdtV49XtFlm7iZPWEjq4bBmatN
XDSXLKYkcSw6Mkvg7FXBhzukM1goamK0KTsFfC2rxbkmxDVTGfh9cetAr9s8B9uuYTDn6Lov
LNTak+CHY0TSEzyGVx04kwyDoyIXaRCnAMWfi9JjNys+rdLzXDg/HDkgX5wn1PPe24Cw95sq
Lm1Um1oZnfFUZpRvZWua1nRWV5jLH4+fPlycv/j69uLFxfmo3tC8BQ06GI1kn4alG7vuOcwL
ilguqtBOVTWoRuGc8ctXb59DYHuMsEYRBsoaBloYx0OD4V5ezOIvmnUZVcsDwJPspHGUQp29
Ko8L3OTgCvaqr8uzdD4IyCqRKAyNZL7hMYoapCmcZh+DMTB6MLLOre6OYABdwbK6pgAaC6N/
YGM6y9C51oqTnVsHbQBZ+QVDKQzerFsax/fwLJNE0dx6RMJV7UJboGW1SMpwybrVGOhbAlvp
bY+OlYNlPaFcSTgHuL/XxNKyYUzbecnn6UUkLN2yd3BGeKtlZ/Yz9up01SwN2dooKKGFHCwK
zlR5SDGqR7VuUzjfsQRhClr1TeCuaYZXi4yF98dTFza0GqI53d8cHx7uT6vHb19cKID4mMGR
EC6ly8at5JyZVnFn6fugqrFBRSpjC1lmudDrqOVswChxGZsRH4dxFAz2oYqpZcTgewO3jpQ0
GUfeEFtYdlQ+IzC2Jg/BXWIl4iJ+wigbHfcBEYVV0/KWHTEhdd5ViaAbGNoWnSwcfiSePpwP
fm/ZUqPC+TeyAnLOwfMYRY4XXDwAK4KdBrZ80Qa5p8k937yNtzc6jQPQuomnaUBN+Do2FG/U
gBsOWtWgdXrZ5SIqFxSlfLkMMzr1x0urZp+ui0DdYQB3G9AyeGxVW1lizFklysPlxTlFsJcD
PkyliUIUIEwsh3SeB2RJstov8Q7OAffpqGreDJQ0b1wfCmoSDM0pmFisVXPA1ZrJPc1ArBvw
nK3VH7RxcJNQwShDzi6rPBItwGhxuYuFa94HDDiIfyv4NRpbIPoTXqAejwOBwS/fvJwBBztu
uoweQloc6evKhNxQpfMWdM2kf1U2rdqxRgTEg9HXWaPiSqL7gQ5xouSG187ZFupdKB7TmaiD
JowVlrxg6WGB06uUh5QxNHuUMTRiskevQcZFJoOBfgetsDCTWXMw5EqwOj3FQSz8z/d3t4/3
Jy8WT1yJXi62deDJzjAUa8rn4ClGyr3TojhWtModV1HHZGG9dKMvL2YGMNcNaN1QLgzppZ4p
PCvcUURT4n+4r4LE203kiCuRKpl6ObqxKbzhCeDueGKtEQA37MRjzqKqxV45FU69bhUBzbyx
toTflgkFNNAVCdo5OiSktGFoZBjwhkQa14B4RaCZgItTdWhiBIeRYmIQAb7f0ptNLG1EAEF1
oDGBWXcSSdY1XIZRaO4LJ7+zryqcOWaNF7doFjE1R/DkSnpwXuKR9eoYU7FlgGHjtRtkjc5w
aiGKEgVAOWhoTH+2/PLs6/vj9fsz8j//Fhpcy7OSw0ZCwYGRGgMOqm3mBIyiCjbGqmHhE6Lr
Hgo7zDZjgmNH5G1llGdW4G80RYUBJyPm/Nrls/AEWw030xQoPpgf1Ldg56D769EVC8zTthJB
S2/Nue31ZjFub8MPOoZp9N5eXyfzPKT8ECOeUoxgLhTn8JzG6HIBbEXjF9hSiT09Cs1TdEw9
K+6qe3l2Fl0JgF69WQS99nt5w50Rq+DqEht8xblWmIMl0Ta+56kXv8MG9CfjlShMr7usrZp5
l9/bqOnQrA9aoF4GyaMMcMfLnilGd8IGW3zOdTSD8WoMAvq3bV1R24vGbYdZwM8uapjllTdJ
dgDTDcs6HDWBBw66PzadQ1iGTBM1LLOVGWdfx1nWwJNlW/TWsBfDd7xKEOKX65zU/4nWhzi2
mY4XPjnpEmrB2IWGmHtZl17WP0QIKwemNVWZDVDAbmPuH3CTyOHkMzOPzVsPvBRb3mB2k8bB
nnN+ZzEQuJBu0HsU5tTCcIH94U44GDB1MWinf6zXIkIp1g+imxIcswYNGdMngCNYGLKwQRJa
rOSMsvv/Hk8rMHKuPx4/H+8e7ZZQV67uv2D9JvHpZ7EUl/smIsUFUWYNJEs5HHA/CnpjZZmw
dKPnQD9UWQG/Zi7IafryRQIqOW98ZGzpgw6T7VdZ+WlhUZoBhB3bcFtBFBMdlTfHLNSM42db
zHZlc5+bYmF95nA60Xn69Q8zkJ5+emto8Z0saE3LDV3Z7p0zdLHkTaSCT8mI6BLRiy5642Mp
HTEGDpBaCNnNfg0sa0WqBpUvN20YwgK6XJu+NhC7NDRmaVv6aLbbhbXqNQn3TvYi4tpjK6IW
gxurSVUXSHi30oaa8w63Jy1/BjTBcj13HiiO4ttObrlSIuM0sOiPBIoqUiBHMVh4FAkzYN0d
wtbWGMoxtnELc8ugLWf1bBWGRdNO9jB9qYJNNpahONCU1gGor18CH3Z0veJgkc1OP22atPNr
R70+QfuCdgvmYUWhgP7iyRO3d+etBhRpBbg7GpSgbQOCMwtXHMIiZBj3auwaU6QuGfNp3HHI
2jDQYEv7FrIPIvjD6mTBk7J9F9JNbsJWG4kGvFnLRXJIigjDwV+L2+h9rmAdFYt1mAQAazgR
I357n/32R0RA3IRpTB7z8j0m3IPyXJLWAqsVgIbEgpU+XBb8HWVi52ONIbIpxZd7Cx5qF1f5
6fjvp+PdzbfVw831Jy9EMjCeH5azrFjILZZiq85V8MTA86LQEYy8GreiBowhd40DkbKOv9AJ
r0DDRcZLkuYdMCVuS4CiK6aYss44rGahzirWA2B9ufP2L2zBeiytETGd6J30Ut2Lh/M95xGe
Qww+7H5xpu/f7OImR+L8EBLn6v3p9j9eScDktTaz6JvlhdTG53HCBW4ZlIxP6iEE/k1mY+Oh
1nLXLeQahoSKI3peazAmt8IcFpHBROMZWB4uIq5EHXdw7Nznrgaz8oWnPbqHP69Px/fEpqaF
tRGOH89bvP909Pk/LNIe2uzlleBzRC0SD6vidbs4hOHBFslC7WpIeNLeMvaMB1D/p29ht5k8
PQwNq59BKa6Ojze//kLiwqAnXRyRWLjQVlXuBwl22hZMs7w8I3nXPr2OMfcgUDijHyzWSqKb
WVil28Ht3fXp24p/fvp0HThNNpFDg77edPvXr2J35bxpmk52TeFvmytoMbiJQQa4VZqo6J8D
jT2nncxWazeR354+/xeodJWNDD35A1nMHsiFqnZMWU/Wi59llRCeOIIGVwcXe/eEMHyoV7F0
jQ47ePQ2YJX3riEdKN91aV7MxyJ5YlmUfFzajBFh4NXP/Ovj8e7h9o9Px2nXAsuMPlzfHH9Z
6acvX+5Pj9Ml4mq2jBZZYAvXtNIEWxTW01dwHszzGNxmNsM5xcN3Y+edYk0zvKAgcIzalBI9
bmsZKj+q4aGmrNEtJvct+iJa+EpwsmiaBkuPFOYjjODxk8YQrnGvvzbgvxlRWBJfnE2l4pUz
mBdRMuBUNKgtx4cP8Hrq/SsX6N1WXwYxBD7M8ePpevVh6O20GBXMCwgDeMYunq262ZJQAb4i
afGt6EwGAFr0MLb4CBBLkp+Bukd4+DoNH7nOwvfeK9Lr082ft4/HGwxUvXh//AJ7QHk8C/G4
cKqfdHPBVL9tcEFcanRcmHQFZTGLxp7KAJ8GGlrQpA+TyJuwmgUDuqDhEu49VbQJpNRG4TF3
ki+8fZWNCceblcvYRU4Rkra2chWru1P0JudpBvso1oi6S/zHmRusSYkNLuAYsS4sUhU1265r
XRopsh86DFiFXR6rhc7b2qUtuFLohts8rhdqs2hegfH0ZtOOuJZyEwBRvaJUEkUr28g7OQ03
Zy0M94Iw4muDKjMYkO3L2ucIKG3CaLgH7HONniYiK3dvrV0RYrdbC8P7J0B0LCz00mN03j6V
cj3CIXWF0bH+yXR4B+As6g4scldB1VOPb344PE3tW/968IH3YkcX3aMt612XwAbde4UAZjM/
BKztAgMk+1ICiK1VNWhguAqvsDosF47QB5azovlrH3W4kjHbIzZIZP6hVlj1h9bndGb36AmB
Z6C0UNunFkfd7oFVX8YTDtWzfU8sGDkPL8D1cxUeC7BMtguVhL31huaZez07vMmP4GJ2fsKP
7bnP5PUll8QCXGgnPfGkSyCLADgr/BvUQ18c6IFtBobMutA36ARHK+vZudtdCwNmYE8FtuIs
JBUUNHxvrDDaiNkoC482Q0k8f64Zso1EsqSVMZ4crDGRj2piSK58L17XtNExEY6V8mFs3JKB
BWKaRwOfRafSMrcy0Bxm+8iGygOeYhU4cZhk1mJMHlUZPhxBnomcE98LgwrFvqY3bJZlQqKw
3YfkZGx9Xl11qHNxgqhq8HtNpdqRcUmd9dIgFCUyVA+26JjnnRNecxgUiSlDqKPY/sn5XKPC
2QqXshvr1YkdhJ/WEEWfEno9c/R6OAtU9egpJsLV4MUOHkkqvLZY26RMDahsM3ytQu32lIsX
QWF3R1vR7jHQtN4GTgqc5j4P76vX0fACS8CzpKb8MKgg+kIkmlYhz2mGyqLBLyhSuX3xx/XD
8f3qX+5lypfT/YfbPg47+ZmA1h/DcxNYtMHGdTnm6U3FMzONcQ6wsvGLEWDwp+nljx//9jf/
0yv4TRyHQ40ur5EseWjuMPle44dkQAo38eAXwUa2dqow6pF9p5MxrA6Ec4XPyih32ZdVGh8J
TZ/v6WUT3UFPN/ZjFNa5jef1EaetER5Kur7rCKQjD7ZcvBDVddcqHb+SU8b97wFz4cV4D0bG
BQf62cnwWcAOjDetUYOND2I7Udm8a7RrWwNzgKg4VIks4yjAgtWAt8F3bYuHqN37+jBhm/h1
BvhSVaca853vsPbbh+Ab1kR7WXLSXIokusbp9avhhVqKzw5Y+NggHvu37777OhBracWDIYi2
S2Jeo5sCa2ByHe4BD1A2bB4nb65Pj7dI9Cvz7cvRC6SN9QtjoUDs9HUmNSl18GJMtHmKtAYz
elc1Cx7i4qt3GGXx22x5g/vgjpy+EUDCA9BJSFe2lYEO9L+SRYCbQ+KnugZAkr+LihB/vlGK
6volieLW7r1RAxIJGRg25n0pp4db5ezgz8GifXdAanypMwX6vYNyCCPRd1QV+eiQFXhu6XD1
cuclddVOgxpaANrZFmCjMrTfacosmi1dmVCWIWFntYt3nbVPen54gNolPMd/0HvzPx1EcF21
Vh/cnDCm0iAXnv16vHl6vMbAHn55bmULsB8JCSaiziuD1ubMCoqB4IcfubLrRd9yTOyh4dp/
xYOwgxtLp0o0ZtYMMjn1hxwrEIco5cI+7Car4+f707dVNSVGZoG4Z4uApwriitUti0GmJlud
aB+sY0x3qHD2/IOhopVrP4Mw1THvQRFQ43ICbV1Me1bqPMOYT+qEk61um8Nz/GBT0XpxdL9g
LvYW1hXDGSf18C3HuUcjaRh/te6Y4si48a+MRD7uhQWXWNqnOhM+gE3A4KRWvfVEjewSGhKr
qpYGWKZYsI49aBqo1B6y+3RUpi7Pz/4vqDlffMUVnl4PWTAN5t7qknXrImVm3QzfpZuyiSVn
rvI6OkkOjr/BPgtVm/Hv7l01ciHhcZW0ceV/peevzgfjtg9L2qTAEJSle4Bj50r5ISD77Y3o
TDayaVGGkMRzPkFjH91GHH1bt26/owXALi9ZERO7TV9vTl+02MdZ+E2ouCnfgjv7/5Q92XLk
OI6/4uiHjdmI6Zg87HTmRvQDJVEplnVZVB6uF4Xb5el2tI8O2zU98/dDkDpICpBqH+pIAqR4
ggCIQ4k5ScYqzJ/E6ZlWEjBHUKHp1UBk7AhkvFZTta8cjbm8CYy3Zacv1ZQwf/z86+39DzAj
GJFAdVxv3GA0pqSJBMPm95ALS5yEX4p8O940usyvPWz+FDXeie2IGfBL8eX7witqY4EMb7tQ
iPrUuCjyEDTguxoSBgiAY0jQVCPTHjSwHGrLIGMTzrKJ0lwTbgQ7VdqbtGr/NJevA+1iACIF
H+8/r124fowJqNO6cXozGKxOEJiSuILCNrpXkDIv/d9NlITjQm3rPiqtWOUcd71lS4GTJAPc
A9/As8MZ8wXSGE19yHP7noaRmyH4och6iDeZmT0b/Xzhk1qKTKrbdekOzhRalgOKS1OfL26E
59mku3yscZs5gMYF7pPZwoYB49sONlfDcN9oDVPSLA0UJVzYxJ4dJtqtRBCGOixBZbzvN7Jd
sQcGArsoenB4CFxbyx5yUjLvqSjwO6jHStT/ZjDkPMpdkOLXY49y5HtGyP0dSn6chgOnTj7T
91jpTF+PnDCV6jHuOLE9egyRKsmrEDPjicLZiQsjgub3qx9gRlMd8zVa/A5QeYP0wF3zv/z0
8P3Xp4ef7F2VRVfStl1Sh3HjUoPjpqW4wJrjQdQ0kgmlBRdAE6EqMTgcG3UWbZEWStQJ9M+Q
LgSHNV+75mGNz6fbp0yUGxoqiF2sgR5NskHSjZnUlTWbCh02gPNIyWpayKjvSj6qbSjJxDho
Suwh6qWi4ZLvN016mvueRlN8Ghqjldfeu2dW1vaVp3+ONpIphTapsOCqYYhaDg+GwCG6nFxZ
lxBgXUoR33kXiK6kxCH98qCu/6zEOV+F2r9B2vXbGDGYJqyNGf/+CCyikqA/H99HceVHDY2Y
zgEEcyfc+DEeCGJtWmAIopbnmp13SnX0TnObv1iDMQDVlGLssRmwmkOm2YYazxJnpmyw3gEY
R+BgxTbP40BEFZJtq+5rH180XqI7BOG1X1szjCxxN8f79KCYIXQPxk1u6yjN79FAoMwMwS3z
OwRlGZO3B+57ZiggyVUNHT73nKreiWetyvm4eHh7+fXp9fHbxcsb6Co/sF14hi+r5X1xq37e
v//2+EnVqFm15zqwYo6dwhEibNYXFAFm8QVbg6FyDqEK0agaGHJsDsZki0pS1sY3P9imtTL4
IFq8H5oKRd0yOVqpl/vPh98nFgjC24MqRd8KeCcMEkYGxlhGiJtEGWzhO4PqKfLmiAWSMARU
oKMckU1R/t8PUM0YuJSK6Xvn0jsgstCCNkBwEUCdIUWnzneTKNGhHMFdeglS2ItXprtjF1Yc
LNS6bg4jVyBRIgIlGIB7Fi+mtN+rXxxTcgM0xwbDxzarQchYvk99EQ56zE74K8fEwrQr96/N
1Nrha4QzWs4akSjtGm3wNRqmfjO6BHWhNSEbakE2ZqrgCEAd32m4RRgv2WZyzTbUAmymV2Bq
gtGzsSGvy6AS0R5n+YLSjIc6tVFISCxw2MMah1VEoGjFoOLxs1iNWxenK+IL4xG1AGM0ByK2
ZN5dAEW4lXLK8ma7WC1vUXDEQ8q+OU1DPOoXq1mKR/E8r67wpliJvzCXSUF9fpMWp5IRQf45
5zCmK5SqwZXVBhzRp/X2++P3x6fX3/7RPm56NiQtfhMG+BR18KTGx9DDYyKAWocAkakmEbSY
M92Jinhi7+Ajv5kRfLr9mt/iclGPEOAy8DCLtP4T4OpGnm6fzU7Tfm4SIumr2Eco6l+OH8u+
kQqnG/1i3c52VN4EszhhUtzg1KvDuJ1ZstAPDzDCiG9/AClkM/2Y6UaSTC9sKaabb8XG6TZS
wpN72F3TDSDRFgwpeL7/+Hj659PDWKpVYvdIZauKwFhK0OcdMOpQ5BE/T+JofQXBu7Uo8WkS
fFjjVLr/gjzSCvUOgeBMuh4oUjyJME7qMJ6ukt4e3TeIm7pD0dwLHtxba7KzNkzMqKw1sbRT
tFnAkNCgWSh5cEdolSykqYVoUTJe47e0hQM21XM4Ag/B1s4Tc1NA6BcAeDwF4YgeBaCAZesk
QiaqKeILKJJlJaG17lC87o/gOeEF348EMiBOd0JMLKpGuAlmGwnlgb4i9GyUxKtLhwDM1yTC
1Klou5kRbxr9ZMbTk210nf7bo4NWh93DMM1OKdEgLhzle4gFbI9ycGuRBaQxtLEDxQUzbW6H
9qIoeX6UJ6E2N87FGjmLnG2t1iLflCfXKSciBydy4v7XPfWUjA5GugaJFTQPU1h5KDEte1Va
olsV6zRUTkhHN+FOm8NFq4kpdsPCMWpkTFUP0ArSIcm7xk0wEdw673xt5gSiCSDlbVZM18Dg
4vPx4xPhvsubmkrnpUWbqiibrMiFFz2mlydHzXsA27BhkKWyikU6VGxrLfrwx+PnRXX/7ekN
LMA/3x7enh2jUUZJNyFxyAPCrVcJxueKEhbj5ibELJDggb86OEL9SVQ8dTTtYbwHsWjpkP9U
F+lXB7Bgw4fQVoTdylNwONZ5VhVPhiloe2ywNVad0PlHdPS9fRSMe6PtGztfBUDxYjVaHzcP
dt72HsBUgKYeJawihsWj6hFOOJHLWNhNnFeiLXJsVXcPqEKwBJN15bwFWdDeaOxHsH756eXp
9ePz/fG5+f3Tygnbo2YcDbvew1MeuVb6HQBN/Ii0LjvLKe/5iGhRh6+Y6pBiumDyEp1iTecn
sCKenoQqxUhffCNswmN+d4NzC0VeHkaczo4waGOCSIDFy6ShDODzGD+l5QyTQ93J2Mtjd3GC
LzlY6w3DVCRbdS91xQ8wHIRwZkgTvE7qokjHr2zGuWtId6OpWvT4r6cHO8yEgyxcDRP8phRS
jgG7/6PNlCqdQm3paawxh+u29WWHOoCCfA2KmctWtEVIHGwHpeFhhb3l6urSiSfYlmAJZnoY
GjOIQANq9EPIeDAnexBlxv3uNBFxj5gKhOZRA4MT/h3IY+suIZX0FmBA/2+k162pqIuhCYpL
fNvJpwkFYEMMd1wb2cv/kCiwd169hypvFKWS1yOvcc9/ediC1M7UYXNQbtFCCiEuzRySTNyV
M0yIqvjw9vr5/vYMaSG/jUPAHLPxA330+PH02+sJomBAA/pBawie4u2Xk85ioV3ZyAVSl4Ef
QaRlqKY+Zb51/+0RIrUr6KM1FEg7O3Soe3mbxe0da/B56eeMv3778+3p1R8uhOXQrvboWJyK
fVMffz19Pvw+swp6AU+tGFBzPKPWdGvDPgxZ5ezLLBTM/63d7JpQ2FyTqmZoaNv3nx/u379d
/Pr+9O03+8X1DlJIDNX0z6ZY+SWVCIvEL6yFX8JzDhIlH2EWMhGBc2eU0eZ6tcP199vVYofF
XDKzAb7sJp6I3V7FShG54s0QXeXpob3JLgoruFdb82AcUROelujFqZjeOitja3K7EiV2HBxn
jJrlEUsdV/uyMs33cZggGkn/+NAHqHl+U9v9fViX+NQGBhpaAgcP1rcDsXWHa7/DNsEZxkNB
MDHvxgGpYzbGoXTanna4xgESPPwcF5t+poAXjCqB8yQtmB8r1/DVlOsAvKaukgzA0x8dkkZj
2tGpRdbRVZDPWYlndIxhIh89gI+HFBJJBSIVtbDFKiWieGG0mHH3jyAJcOwyIACMeR4azhkP
wEZs0D7q2jfNiTnh6Ozi/sAXinV0oznoFATjtH/7nHJprXFdUhEjc+lHBDZhMnzJqi3CzrJt
HK4tw1uxQUsaA+GyZO0B2Y1f3LqYOiqI1us0PyhJICDeIzskNJtjGFVFhjUJF6WUkZotUa5X
Z1yB3yEfMo6J6x04LYpyNA5dqt2ItG/8L9txs9oZvgC8ya9HVUC73OrpmYHLmxn4GY/g2MEr
hrOYenJBsRNGRyLWLVxDcJY5kby5/8TMECrpLpHROB0zjjFB/bwAHBXfFKDxxb5OnWQ3anwI
nz4enPPbDS66Wl2dFXde4FyWoqLZHTDV+PUYZBDaCOfPEpbXRGLLWsSZJtJ4q6HcrVfycrFE
wYqIpYWEdFYQpVSEhJltUjZKAMVXtIzkTsn+jPJFkOlqt1isJ4ArPLEBhAgtKtnUCumKSIDR
4QTJ8vp6GkV3dLfAD3aShZv1Ff6UE8nlZouDJHUSbD6UjvV3hgSg50ZGsc9Nds0cS5YLHBau
fBJsvHi5uh8yh/Pu1lpD1BFc4U+PLXwczs7HyNh5s73G1aItym4dnvHnxRZBRHWz3SUll/iC
tGicLxeLS/RcegO1Jia4Xi5GJ6INPPjv+48LASq37y86z20bHPbz/f71A9q5eH56fbz4pk74
05/wXzcq4f+79ngbpkKuG7EiFMFguKTzMpWEoXqbBwcXNXtoQ9C5AaE+z2EkEWEndTQM7zEL
xzG0IRDk80Wmtuz/XLw/Pt9/qtlBtmKXnBESquJkQ4YiJoFHdZGOYJ2Z2UQPLGaJ56dbIhhm
mOCUDjzP1QqFEFuNkPU1SgUJg+YxDhJXPyYsYDlrGF7/AK9C6MCdW8nR1QnXCltE44MBQUTa
ytZ69WshBfjBu3KZiHTMc0zQgAqW+ATV3XykUKLZ2LjnCHUP2k+bBC9/U+foj79ffN7/+fj3
izD6WZ12KzJxz6u4sbeTypTSAUUU0A6r1lXYo82EmPZddz/U0qrHg2tIWuz3lDZdI+iIu1qy
wdeh7sjJh7cGEmLtw5yPvhmH48VwMYT+ewZJQuKFeZRUBJLwdDM4VYk1025Uf4yj6TvpZHZ0
81FCt+vt4V6ssbUhbVJucGw1kThdUCuFDN+Ewq9lgcZh1sBSS8et38yg0frr6fN3hf/6s4zj
i9f7TyUIXjx1kXKtpdUfTWwdui7KigAiV6VaqaxN3Bdep6BSn58Wny9AE4qFWG5W+EVrGtIK
GGiOxpEiXWGWlxqms6yZHazG+uBPwsP3j8+3lwsdV9iaAEtrpPbvKOqw/fVbOXoHdjp3proW
ZIb0mM6pEryHGs3KtwSrKrRTu/uh6ITf3GbF8Ed/DSM8P83+UaRNSPw66uZ+CkgcRQ084kZc
GnhIJ9b7KCaW4ygUUyvH90g5O8GWDgE2XoqZQhiQmzPTlFU1IRsbcK2WbBJebjfX+DnQCGEW
bS6n4Hd05DCNwGOG71INTcp6vcHZ4h4+1T2An1e43cGAgItaGi7q7Wo5B5/owBeduXSiAxmr
FOnGN6tGyHkdTiOI/AsjjOoMgtxeXy6vqG1TpJF/cE15WQuKwmgERYNWi9XU9AOVUs3TCGBb
Iu8mtkcVoQ+S+qC2ye6cMsjTWYGr50SbijZstrjoW06RBw1sNfgTCJWIU8KctZwiExp4EnlQ
5OPHq1IUP7+9Pv/HJxUj+qAP5ILkps2eg/We2y8TEwQ7Y2LR9VPMxJJ+hRyWoxF26t9/3j8/
/3r/8MfFPy6eH3+7f/gP+rLUsR2kzqzVYdPdIHPI2jF0OwbYLssirTM3YaMdU5KogdhrBD1T
UBAB8GltgbjKqQNOVr28wslkFg3hSigE/YRPRC0chUbyZibKurDy41mLHL1xlE08eEcQ5REC
rpaE3axCGOVUtoEyZ6VMKD1i1ugwzYptOAqI6UNJG/AVMhaUAuqwepMYvMK3PrScetk/BxAY
DBfei4l2XOvTKVGNwtrjbX7lVeG1OL0T9AKlDN8IADwQWrkoo6NNwcLqpxcKGqeMMrpVUEXN
qYCasOi0KWw7f3rBcHIeZTMRO3s3Z0JTHB+kl0LEaHQ45xfL9e7y4m/x0/vjSf35X0ylE4uK
g20i3nYLbPJCer3r1DZTn7GszNQYC8g6rF8E7chuLIRUP1mhtlhQW6fXxAUAzbaFLISD0GXY
GOiEurTIQwVafBQCI9wfWIUfeX6r85BMuDsQdmdiwrur5oQCWs0HaYcuShJ0PFMQuIGIl9qA
VfwQ4Xz3nnB3VP2TnIi0of4nCzugoSpzLZO1/bAq6bLxpO77bH3Ax6DKm6Neb52/hbDlO1Jv
U3maUWkIK9+h0tjoPH18vj/9+h10kNIYhTArULPDCnS2Nj9YxTL/AxtbLwScolBRUTXr0H3r
bM1K1uHVNf4EMCBscRuOY1HVBDdY35VJ4c7PuEcsYmXt5hhvi3RK8NgjIEgDe+4eVV4v10sq
MFhXKWWhvuocFlumIixQQwmnas0LL2crp55kWvV9LecGkbGvbqM8Z/1SztV1xGL1c7tcLsn3
1BI2JiVOmdXOs5A69JCo7bxHjS7sLinKltfCzTR66yekQuo5wUSscpiIwlFysjql3JJTnM0E
AH6+AUKt39xGOii+xh2nLmnyYLt1pYBx5aAqWOSdyOASP4hBmAHBxdmMID/jkxF6G7M7mWJf
5FZeA/O7SU5eRlJol1AS6gTQ/nujXXFm16qxh14wmCDHjIutOlDBS+Kpbg3MiNSpdBQHZ4rr
5JCDYZSam4ZwvLJRjvMowZ6ggBZOReCY/kFkJxScituDb+82Anp9RCYh4akUDrvcFjU1flp6
MK4c6sH4bh3Asz0TMixcwoduWbuKDhDsHLrw3CixheDBZyloxD2yUx9S4Zm3rZYLQg+okfEv
88sz/ijeqkGa7SUu9EbZbrnAj7T62tVqQ6g3DP0+iyosMHMke8x+fKgoXeHWU1LtYcIe3WoP
smpyR8kW8NXszPOvYeIEixpA8eGLqOUB4Vbi7PhluZ0hzCb1pGMOhyb3taokB3birs23mN2M
Yru6Op/REeg3bcusc7lYuL/8n9z/rSiy+5wo9jjnr8oJMiXOVBX/GnchVHOXC6KSAlB1COk+
zpYLfMuJPX4df8lmlrDVNjs3xDGjyKe8QeOryJu7lcMWqt9j1Q7ycfVllhfOIcjS82VDODUq
2BUtfSuoPE2CY8x1w+6PCCs3MOuN3G4vcbICoKulahbXxN/Ir6rqyIoB/2jRHurhnmL59eV6
5sTqmpJnAj1M2V3lHE34vVwQEX9iztJ85nM5q9uPDeKcKcJFPbldb1czDB2EE6m8qPZyRey+
4xndfW5zVZEXmRcyjwgW19dyxyQUvw4x/XMlKGUmz9AcVd6udwuE7rIzxX/mfHVDq+RN7dIX
iJGeHxUzYz3L6/xAEa8TdEcUN85AFRoaXd6q0YYs5/le5K4desJ0vmO0/3ccLN9jMSO7lDyX
kHHNIdfF7P1xmxZ718HhNmXrM2FufJv6HL2t/DnzvKHAt2hyG7sjB7BkyhxO+TYEizsvAGoP
rbLZFa0i13djs7icOUIVB5nZ4Uy2y/UuxDY9AOrCCv/eFjSly+p2xeCx0tQnIalgYB3idkl4
rACCTv9WnU3KZaRX1Xa52aE7tlJHTzKJwyCyQYWCJMsUD+aYI0m4on0RH6nJ7ZSmNqBIWRWr
Pw5pkYS+UZVD/u9wTnyXQhF61xJpt1qsl3O1XOslIXcLwnBXyOVuZv/ITIYI7ZJZuFuGO/zu
46UIl9Q3VXu7JfEEroGXc7eCLEJFCPgZV8nJWl98zhTUmdZezy7vIXeJWFneZZwRliFqCxGx
rkKIBJET957AvLvtTtzlRSndJBjRKWzO6Z6MnNzVrXlyqB0qbkpmark1wNNScUoQ+lgSRmK1
p84at3l0lVXqZ1Mp7p/QBwswF0vVstbYA6vV7El8zd20GaakOV1RG65HWM+pj4yxuN14az7O
zoKm2i1Omqq5nl0gI0ki5wkAqxL1KYsiZ30iHhOXmbyJcblZcY/Ey7eOuhL47+sdSwiaEPO0
Y79miy7lz8A76rIQnmQFNU0GR9QBo8IgAII6/xD+QRBPLoDS6oCQ/qodm4rA4ZN5BPYV+z34
tiXjDPLqSxdQ3to0IoYDLIJn4AR/jgLlLQlrVbY0wnm7vd5tAhJBTei14lum4NvrKXirDZ1s
4HK7XZIIoQhZRI+g1RuR8IiprTPx/agEEWA1Ca/D7ZLuoG7hcjsN31zPwHckPNa5xSmoCMv0
IGmwNsE/n9gdiZJKAc8ri+UypHHONQlrxfNZuBLsaBwt1U6Ctfz5Axg1vVK9MEpi5DoTGaN7
kp/VF74wxTvQe/4W+0THRxpOGKAOD22YSLJJYCQnxw9MCw2s+XJBWEzCU5YiwCKkP95agZLw
9vLZK0K2quBvXGIs8Q5IT9HaFh9k0AaI6kwA+hoAClmNk3gA3rAT9VAG4BISuBA+JwCv6nS7
JDzRBjihyFVwUIxsiesR4OoPJXMDOJG4agFgokxwBvJkmHTr1/AWm3milyrZrpYYA+/Uq51n
VPVzwhJKQa9wrZ+GkGoEBd2R9XY3kNOHYG6rdLckXAFV1c0NzjOy6upqhT9+nES6WRHmaqpF
Sqt5CvP15oyppdzJzFylnS4gvnW9Ca8WI88hpFX8qREfniqfcPkLqjCTFNcEwBjnKu3ejB59
mKgIZ1IB0Y8wPtNur9O0D3dZeVpRDDbAVhTslF7uNvibjYKtd5ck7CRiTG7xu1kpIdkR2grw
7cPZYF5lhG1XeXXZJj7BwZWQGRoV2+4OoixX/CivasKTpwNqW0MIT4HfnDARhEVIdkq3WM5D
p1c8EswjQ5na6IslngENYP9eTMEIBTrAVlMwus3Fmq63vMK0uvYIK+a/vVX16oyKNE61sWbs
v4xdSXPcOLL+K4o5vOg+zOsiayHr4AO3qoKLIGkCtenCUFvqtmJsyyHLEdP/fjLBnUQCOngp
5EcQxJoAMr9Uywth6l3LPJ1iIVNFGyNmWW1d4qqmkRIeKY2UIBVEqecuA6OUuIqqP8JPjO81
SGHxMrwXv1ffyCiFvQwlvPi+rbHEaBMMP6ut1ihp+JAYkxVeHNfaKcZnIZfUcdf6+3wUEYoG
iCgd5JJOL6A0Zbi/xcFM67qPofT6oqDIcUrd7dUwW7UhTbLxRf8nmeH6MuOGm55PlMGNiMDZ
AGAyXxPl6zkfL4LY2bcqZ4kRzVSpCXW4lNV0Yaid8r+rcNSXZ+Q//G1OUPr73dsLoJ/u3r60
KM1u/0K9l+NVjX51b+7VK2Jlqa1jqe9WRqka6sF+IRSx9qTtPNI84GdVTNhaGm/xH7/eSLfj
lulx+HPCCVmn7XYYYHlMilpL0Ea0ppAZJdcBso+TuMO1jAeyZNfjJEiTKu7p59Pr14fvj70P
48+xU7t6Hi2QKfrfGvIxv+lDldXi5DxhvWmTJzr2oAopWsf6yWNyC/Oab6zLs00Dnb9Yr8cT
HAXaaorcQ+Qx1L/hk3QWxKZphCGU9gHGdTYWTNxwQpcbX6+6dcj0eCQoZjqIjILNytE7ogxB
/sqx1F/K/SWxuxhhlhYMTAzecq2/rOpBxFTYA4oSpmQzJksuklA3Owzyd+OCYXldc6FlAcn8
ElwIb40edcrsrcbdSuan6ED5YXTIq5xkNh/Ig5Nl/FkVwtUkVUE6JO/u08NbrEvGS2D4tyh0
QnHLggKPXYzCSvBxZPsO0vioat/LdkmY50edTMVVUnw1I1W8kycprs+Ee8qggAluzhhxyt6/
TTWQlky8B+3yCHXgYXiHwYv49JhfiURSMuJKrAYERZEm6vUGUBjx9Zawka8R0S0o9K5RtRyr
i6R5qSFnATpnYMqkb21zTj1OfzTQLTsYqHa0pWjTqiALoFdq39Fjlvqh1wNi/WFOB4jykHAo
6yD7HWGY2CNKwgBzhKiIWBA96MTSNOGEj10HU7t4KkJGhxIsTi5sevMzx0keE7Zu3fuUGYwZ
cwnKkhF0CB2IB3tloWYpOHrj5aXeaHCMCgPCWqyHSZbtrVVwYTH8MIPuD0l2OFm6SiBAp9ev
Yx0Gda2TrStcCyLgcocorqWl3XaCBRt68KnYfKOptU5Rewuo3IgowRDFCpnox8YAtZcREfu7
xxyC7EJddA5gxxB+2ECmM/MGVs/J0GujnOtOqZoawjlZRGWSDM6rB4no7lokZUPb2b9jgAhi
z/f02tEIhkesFSci7gyR4cl1FgRhwgxHGBENcXhTk2dJxaLMXy/0GuoIf5NSFLRZ6By7eh84
xhWDOIQd4g4BL8SBcuscIpOE8KIfgfZBinEB6EV6hL5GywVxdDvENXtc+8fAJJ0Ql10DGEsZ
tCZh/T/AiY24eRv9/DPE7U/Z/Tvq7yh3ruN6diA1p49B9rZV47G6+AviYGSOpbSQIRK2KI7j
vyNL2Kas39O6nAvH0atiI1iS7gJRcVa8A0vrf6OOkCVXwpp3lNvRc/R3fqPZK8kUrbS96WIM
vb2+LvQbzyFU/b9Est73QS/M3nMKdo2YfgkfdYhYKvOO93QJdS2b8yIXjAioNispkxRPzQgq
IjWX2NsIkO6MSJLE2QehYGlCrdhDmHRcwvlyDOM7IszVCHb1N+t3fEMhNusFQWQzBN4ncuMS
xxJDXJkfeLPE2cHsk1hrbz2bXTUbG2zWqbBwO4S/VQ0IeUBdvDenY8vrAsooqUOL5u2CV2cG
exCKTKw5NoxEcTQBOA/8lbE8sDvMiHvcBiBTmK5CmRG0uQ2IKYp0meg7UXe+Bwp61iBNwKv8
SHDzN8ell6TkgTGPW6LuswyIiDsL01tO6h9j9e98ykO97S/XdGnsMIwLyEevE7TFDEjtoskj
TqAZYzREiWH3Y+oQcXl2N5s1GuXiPtyK9IzIkrO5HqeOew8Pr4+Krp/9kd9NKSJxJuxVZw2T
+wShflbMX6zcaSL8PeV8rwWR9N3II6whakgR4eGWZgaoxSkL61O0yWOzuOEjaeNaP8l4+mbh
8kmg12k2ZUTmcaKXkn3Ak7n3c0PZoGuTno1Wc8NRXxp8eXh9+IyB0Hsm8XY6lbe+Pc6DK5Co
JsbAs7pMpMoiTQyRLUCXBr0YlN9ecrho0X1yFTJFgtKLTxm7bv2qkGPz79p6RCUTjQ6bvzq4
RxZPriGUH4QkHcujW5QGMXHAzPNrUNuCpESzKQSGhZaUS+Ati8jZrBUSpwetGHbcWnmW3+eE
dxkThL1zdYhTwt+n2hPc8CoEBSgkxFeoUAlSa7mexorR+IQhB4LBQXWcnHkyJrtKzsdJyIOa
T/Pp9fnh6+CuctzoSVCmtyjPxrMLCHx3vdAmwpuKEn27k1jxso06+BBXx5kYje5W5GzW60VQ
nQNIygi1aojfYR/S2akMQbOxMir0iNx4WMoRqetAkFyDkiq/1v5pCMjK6gR9WmBsY424hF0G
40mDWelfL5MsTmJ94XiQYSjQUhJ1r+KiYBwDqgmRSo6Wl4KorfgyMZAfC60NWUrX1zqKD0Fp
IYjP4qyL35O9fP83pkEmqoMrUmoN6VXzuOmGq4FgY6ST7c8Y0XBQzRMHfW+a60diTmjLFUUZ
Yd3bIZwNEx7lslGDmrX3owyQ3YpeXnuoFUacpjbisqBXeRDvRArNaHuHQrEM2Svn0JYyejx/
zfJA2j+KhJ4VnOFJapxq3T1gIS3RQXQ0j3aJFY5Q0DY44aPVA9UCZ8EEXHeN2cvPQzfb7FwG
o0LhjRibMEg00cUU9eVnjaYyXwUJVRYtzzAG9IpStXsAQY4B+0qXUvWLNhqutnXJ8g80hAsV
oxHUUTrA1aEYn+Xjb9wUEpadQbaPDgnefWCr61fxCP4UxAqfpBGGRNQUBDroVE+/sjS9UdER
5lrn8IvrnlmeMCppQVjDDUFhnss67Nis7+C50Nyixx0wryDfKabAOl8mezbUEjBVXdHD8M3H
yXiOFIy+V6XCikTa3ICcn7QnEiCpY6opJWj8osn9OiYF6T4P+1iq+Imd7o+xu/rvbYbPHWQC
6V9efr5ZYgvW2TNnvSQsjlv5hgik08oJ9mcl57FH0Ko2YmQSM8krXuj2dSiFXaQzbRUmiEPW
WsiJMwAQIqMvsf8HaaauSIkTEZQrYoFqT3Rh1bpMrNdbuq5BvlkSZwO1eEuQ8qCY4kRuZJOL
F9UPFPsv0TFExDWRVnCA/fPz7enb3Z8YN65+9O63b9DZvv5z9/Ttz6fHx6fHuz8a1L9Bpfn8
5fnH79PcYXvF9pkK6WIMJTDFEo4bCEt4cqabJ6dthlTbR4G9IILxWQTOgbh2PJrVWfJfmPm+
w4IPmD/qsfnw+PDjjR6TMcvRkONEnHIjpMzDXO5O9/dVLohw0wiTQS4q2FjRAAZa98R+QxUn
f/sCBeyLPGjuaXF5eo2KKUN5exRBTVeTmp3E6R0LU2q5rHsHhvqjQ5F1EJxILRAyvM9gXRk8
tyT0ScKxWBTEzvwgtPEIxrHp4efc46me8gtx9/nrcx0bShOMFx4EbQlpWY60KjBAqR26DbQv
NPFRsSR/Iwf5w9vL63xpkgWU8+Xzf+ZrNIgqZ+37lVI52rWuMWCufZjv0AY2SyQS0ytHfPwW
IQNeIGfuwJL54fHxGe2bYcSpt/38/1FtjN6EEcF8tyAsIOfYiGv7x/zLBpmwLJKlXpnGSqQC
wl/0i2Id6Ts4E4bnSkqxhnRRwot05O45TCdJqEagGYtjgT7RiCB0SSENYlSk0B0dDX4XxN12
GEjY5EHxhOsR3igjyDty0S8WLUSExN6iKSwlb58PP7keRbHTYvDa2qO2IBMQQb7ZlAZA/paI
d9hi0sL3iKv+FgKFXoE6Z/5wHi5X+mzaIu+D0z6pUhm525XOsXPWfVRCO5Uf2NwKPqsDGWlW
oC7SIijJp/2p1KtfM5S+qjpY7K2I6/8RRG+B3UO4syBsnscYvU44xuiV6DFGfwM2wizt5XE8
ffMOMFuX2jh3GEkGwBhjbOUBzIY6mRlgbIE4FcZSz2Jpy0VE3sbWoldW7YKsZQk3Yo8+Mtya
Ic7CitkF3FkfDDNsH460SBPBqXOw9iNDkqmogxQJEWSig8hrYa4oddBh/bZYbCyhWjFUqqVN
YmR8EJw6t6xBbH2E/aZ+Ne5q2nP8xVqvcA8xvrujTmZb0Hrpral7ggYDW1luruWdFDI5yYAK
0NDi9una8clz2w7jLmwYb7MgInT1CPNoPbDDxiG2uX1TrC09EBV+a99h0jfPZB8jYl1tATCk
Sse1dEAVsYagiewwajE0zz81xiPNm0a4raVMMoKV3DwqEOM61jKtXNdcSQpj/7aVSzhSjTHm
MqM2tFkQ7vMjkGNeDBVmY17AEbM19yCALB3P0p0xdrFtilKYpbXMm42lxyqMJXC1wrzrwyy9
jEfF0qbhyIiyH+vanRMHjD3AswIs3Y9bdBoAmPtCyoltxwBgKyThHjgA2AppG/WcoB8cAGyF
3K7dpa29ALOyzC0KY/7eIvK9pWVOQMyK2LW0mExGFUZv4IyO19lCIwmD3lwFiPEs/QkwsA01
1zVitoT5Z4cpFKOZpQp2/npLHAdwMpZ187Q4SMsABcTyvzZEZMnDcLTdKWE8gZnS3JQJj5wV
sY8dYFzHjtlcKHKArtBcRCuPvw9kGVg1LFxaZlXQ6NYbS3dWmKV5uyekFJ5leQd9d2NZKIM4
clw/9q0bWeH5rgUDNe5behrLApew0hxCLOMBIEvXuugQppwd4MAjyyopeUEFSBhBzD1RQcxV
B5CVpasixPbJvFgT5ustBElFo+Jk1ZsBt/E3Zj3/LB3Xsnc/S9+1HDdc/KXnLc1bJcT4jnkf
hJjtezDuOzDmSlQQ87ACSOr5a9IMbIjakCY8HQomjIN5y1mDEgvqitF9hgjjJWA3sPHK/B1H
C/K4cMYHPg1CLc3BiAOqScLwW5KJqUnyBJTwpISSo7UnliLf7eoYixUXHxZTcHu0OEnGGIbo
F4jUp0Ov+VYeJyqAZ7XPz8hPWFQXJhJdiYfAXcDK2i5NWzO6R9Dct6KDUbaP0LlrgMbyIgD5
ZaspyawG1xdOlxNGXwmm8bUaOpC3p6949/L6bWSX2WVR036q1ovSYDz5NJCrv6mKI14V8KLr
Md+mWYg8qmIpWoC+LwN0uVpcLQVCiC6f7lLHmNfs26KDMTN9FXWURIGMDnE+ol9v0+irzQ6R
5Zfglp90Vz4dprYZU8YzGPcNhsLADrNDIbmGuliD3GBszV8lbmInZtV+eXj7/OXx5e+74vXp
7fnb08uvt7v9C3zi9xdV72PQjDemn0vynezepf/mOJDoBqYVNsyfxgzuGSvRMcEIaoKAmUHx
xSzHTfbyailOEH06YYhS6pOC+FwzYNCIlHG04DECPGfhkIAkjKpo6a9IgDr09OlCigKZxivK
B1xA/jsmi8g110VyKnPjp7LQg9fQUh4I/Rp1CXYws5EPbpaLRSJCGpBssB0pKXy3Qeh7jrsz
yknhoTBXmIiQvY18XG2dnSUpz85kk20Whg8GDZLubYr5F3YwS8ehc0DQ0gs9w7fLTxyXBEqM
miwlazUmE8D3PKN8a5JjHJd7+uOguyfFFYaUufUytl0s6TrKWOQtHH8qb4z82L//fPj59NhP
qtHD6+M4vHvEisgyl8qJPVVNOCZCa+aA0Wfe1gFyNORCsHBiQa5ligkjHmjhKJiVj//6+vb8
16/vn9HIw0BTz3exutEjNikFZ1FNMUac7uPzipJnQexHFSDerj2HX/RWoKoI18Jd0C7LCOFo
zKrfbalSxgH2FPJxFK9d4xsURL9nacXErU0n1m+KGjHlJqvEaUZnzSMHAxGRhT/IqCoCwSL6
9bUC9ukUlEdlyjW1TOrAaRFVjDAORRllONq/BN041H7oPTjKVlHBPokNEfUUxR+D7L6KeE4F
lUPMERTlqdHdQOz7BfeJO7ReTncJJd8QhBR1p706qzVxqt4APG9DbKY7gE8QRDcAf0v4xXdy
wnaikxMHcr1cfzaj5HJDnecpcZLtXCckbtMRcWZFUiqbchJSJpLgAAZhEe3WMPLoGirjaOkS
gYOUXK4XpsejtVwTp+EoF0lkiA6IALbyNlcLhpMkqCg93nzoR/QMgbqCXq8Nr+vFwvLum4gI
33wUS1YFfLlcX5GCISBIshCYFsutoaOiZRXBZtm8JuWGVg5STtBhI6uCsyAMsoyUC+q9CuDr
T5J7AHGn1JYcvs2w+KgsfMIsvQNsHfP6BCCYrIizQnlJV4uloaUBgEHfzF0ByYm9pRmT8uXa
MFxqnZQe7VffsMYGJbvPs8BYDRfurwxzNoiXjlmVQMh6YYNst5PD8eaUwqha9bmUyR6Pgoir
ttI0ZyDxujIinThfK8Vt//rw48vz559z++BgP3Aihx/oF7JZjZNmBP2YKJh+YKFs4jDR7sjU
Cr6XAw/48z6A5gtnCbiAoMOH+OBsBlsTEIoL7AoxnnyueUNc8oHbc8mRPohV8ZjNG9Nj+M7T
1ehnpGDKbJIwbuoBIkl3aIirL1F15KLxSxoXDtN3oVa0C9FVsTsX1AmRxDlI0zz64CwW41Kh
D1cF/SGukOcf3TvoDyiqaOx40XmjPH3//PL49Hr38nr35enrD/gf+puMNgKYQ+2v5S0IfqMW
IljqbPQXRy1EhdwBlXfr6+e8GW6qGg98CqjC12eZJR/5PrbHkoPk8VtL2EYQix2KYchMnJPa
I9O734Jfj88vd9FL8foC+f58ef0dfnz/6/nvX68POBeMCvCuB8bvzvLTOQl0Uf5UdcH+Ydx5
MKUOzYoEfGHy4V//momjoJCnMqmSssxLzePotIectCQAj7sLWU5HnZLtz9Q46R6tD/XRh0+c
RJFk8Qd3vZghD0lQyjAJZM3peQ5ShM1xUFRQ6GV3+LpZzTE43ZTJpxNa04cncbsETH6AdXOO
FDIvuqwcDUA5T6QM6jc+lfXodcbVcKYiOSohzAq0kF/2O3pw7HlAGfeh+BTrTWZVFxb6sxI1
ie6DPRVyBeURK8uTqD4lhCaGmE9X+t1hHh10t1QoK5B2qfVaiZ9//vj68M9d8fD96etsIlJQ
GKqiCKFf3mDiH/BYaSeKSX7D94Yli/fJuGvXL+gkoyKxlkL+Lnx9fvz7aVa6mpCXXeE/13nQ
qEmB5rmNM0tkFpwZvW7tueOelsTpi+pIYX49M5jUSMQ8htCsJvIS/ZVUF6/wrP0o2lrZvT58
e7r789dff8HEG0/5cGDNizgyuw/qF9KyXLLdbZg0nD/alUyta5piYabwZ8fStEwiOcoZBVFe
3ODxYCZgSKwbpmz8CGxv9HmhQJsXCoZ59SUPcb5N2D6rYCpj2lim7Rvz4Q0qJMbJDvpyEldD
nidI53mcNIrD+AHJUlUAWTP9zFvjS+syqDnXwxpRY1nbK0BacP1uEh+8wahzKVYAAFAcESgC
5QC5XSg540KSQlAKCU5/EMLaKPTHf/jkRNZLkh2btGBGeVOgArcnX2Gm1MdWd2KHjBeO71W+
z5S0ZGdSxjzCjwRkaeIv1oRVJvauQJY5WSSDMoRtKW8OYc9US8maIAKegCQ4UzbgKCX2IVh5
SQ4DkpH97ngjKHNBtoyJhRY7Tp7HeU72h7P0NwSzIo5QWD8Suq8HpZ73SY0+MtMIdFcq3jHW
ERfRif4eSjHAXhTCanKVK0qvwM9lpTwR9L/YmRLoTFnOycLxEKqLHgGC8SI1fNmMrLVZS7Vr
kJrtwofP//n6/PeXt7v/u0ujeB6wpnsBSKsoDYRoAhNrZoswiI6pYuUbAvs5uZejiVDJRmyZ
vVC5D2k/ssd8Uvy+KeEd1ONEANta/bwweGFc+D5hITxBEZ5bPSrlS8q+fgA6r92Fl+rN43pY
GG8c4mB6UKwyukaZXqmztG7nKBlz1i6QsL/6+fIVlsRG/aqXxvlZCZ4/RDOSPdCTQAFSBhag
a+ZpiuW0yaFb3yewFRkdbuhwuMIzIdExvDYuqcJba/ek085OnN/mhRwlw7/piWcCNjh6eZlf
BOylugWxDHgSnnZ40z/LWSNsGcOKEvShcuQPrUOXuZwZP/2PsWtpbhtX1n9FldXMYu5YkiXL
99YsIBISEfFlAtQjG5bHUTKusa2U7dQ5+fe3GyApgERT3jgR+gNAvBuNfgxmaJkixTa8H8uq
cY0zPKit07xs7cSyxN9odlTugclKieeuM6bHffQhQVyqyeRaV1J/W08c177uZmVqe3Hr/DAO
h9ykPEjchGgX2o4hMUnyu97GhOmfnZnapDSeTd2oVUjNpESZlKe99Zf4PjAqmkSnLHRZj0+w
cG5lhddFHn64kWdWWRzCFik6LS+yoFpJN3GLz0JSCzeClexWeqaKVBFuIvHbCEt9XUQCd+Vu
G8OEVXIN87TX7yWqOxWe4cAV10+uO6tZ4Z1a+iGSTb9LQukY82A9JBXupBmdF072RBAxYJCe
qJz5L6GmOcZTnvbfSJeRlx0NbadlottYFo4XC0LRXTdITin7RkMmPZcZuphdU8r/SJcionyQ
IFkJQTnoa8n68kbYgiKoXCwo6+6aTBlN1mTKZA7JO0LrHmlf1HRKmSIAfYke4klqwK7GhAhY
kxNBvdrrjWV/WHeFNHZueT0h/E7U5Dll2YBktV/RVYesiNlAj661aQVJjtlhMLspnrCYaIqn
yaZ4mg5nFGFMgETi5og0HkQZZR2QorZFKAinPmcy5YW3BYSfL5ZAD1tTBI2As2h8taHnRU0f
KCCVY9IxQUsfqECOb6f0ikEyZQcL5FVCxdXQx2Y4sKsjkd5C4JwfUzEsWvrApNIPdYs93S8N
gP6ETVasx5OBb4izmJ6c8X5+Pb+mDO9xZjMu4VpJmJPoqb8n/YkCOU0mhOs8c+zsI8IkA6iF
yJUgoiVresKJGBE19ZauWVMJlQ1zphL6AJqYpSLYiuVAvw0JH8yJzxakkdiZfuEI0xKBTNK7
w3ZPGr4D9ZCsfNqTUfiHfhuz3FLrlcA67GbI2gfrTnLDGXeWEqsKbhIG1htrIldQIYcaWI66
m1XfjWYPGEAfBk1c8A8gB0L6uUAp1hj0gfCP4kApz4YuCu/KH4ANyI47wCzle0re24GyrunT
AHBg2VlArSnxoW6cXlHm9TWwFukQ3GvUeO5CCSZvWfqr8z2wndLdbB3n0W1qguHGUuWZ8c5D
b1s7zq44C4y04comG2WMNOreMUx6qKOUYaJLLeWyu350KLuS0qdsECUbD5x1GiH3E/qiomMO
McHuLpQxnkzoeY+Q+YqKftYgIrGijMg0GxyE5DNHU0SeEbaQZ3o0jFAwzmQYhQakXeJ7HaSb
23ggWO8CvM91iAb67Av1YAaEvaM+ZqgJv1/MHddjsG1Ucc7708Ps5yLsi9gi4cSTgJ9nt3Gq
4OlaRZ7KAVawnZ2xjLyvhFjeWQ5rYh78OD6g03DM0At8gHh2Xcesdb6KBUFJhx0ziMLrpljT
UNzbKxITiVhdmk7FZdTEEtc6Ud2SxxuR9jqWoy7Dyj/SGiDWS4zHtyKKRT2swhJimDQBvw7d
umBDk2ygbUFWromIPEhOWAAbmX97QHpeZKHAuEl0BfS2r8nQe0rALi2XsOn7bG01qo3F7GSG
ybfO0kJI/66BEI66XnRPk0EADZF33Ll3yD5VOE35Al3S/dg1T5aCUJvW9BXhpxeJUUYyKzqv
mi+m9CjC1wwvmc2B7sEyQP0JwpYB6DvgowhZFpK3gu80g0ztCoeiUbVz8gm0WCTyCNVbw58Z
FREZqWon0sirAGC6J5UCdrj+R8QBbSWu6cSbkKGl2ZaaIdilvt2tSa+IG7yDgR+5z/C4BaxW
HQm7KMpkGfOchRNqVSBqfXt95d99kLqLOI9lp3CzWcA80ZG0B/aTGF8lB+iHVcwkcdYA026W
vLv1JSIoMny/6SRnqJ7WX4gY2koMr4dU+dwXG0oh1t0SgV/wBr7ROyTw27Bdx1lhPSlYiZ5+
9IW4dMiKxYd038sGBwA+vJF7NUaeL3Ap0ru1fjryX0NN/0MBxBVc07MgYITlJ5DhJKI7qg7+
4o6h7Bxp+HtoP9dOHMlIVBqhOKP3WaDC3AY2hfteRjSiTPO47B1FBeUIG7c4VIRjcuAU1LG1
PmcHLJnexAS5ncAGLDnvcXAqgm2NbqyKMPqEeVaht3/k8Kqc0BLRiMnqCycUOswBMXSK7oQg
oy0ifS9gMZBUrHiw074cQuAHB3Yc4+yjighv7ZrFi3O/E3UfC9sYnPrZbHPPCd1JntsJNaJ5
BKxr6hZ4Dpzh1NJ+tg7JIQYc2PfK0t4cBOy8VIn6fgoAulx/Ee2d267SamwWBXBbEUrFvNbT
czujfop0E2FGdfwtY2rMtaTNL6vR99Q4F12X+BZZh3qMmKyiwB0Rt3InGpnOl6awXwe8Svmu
fu9tVTKTx7eH49PT/cvx9PNNj+PpB6qTv7mTovGoUqsddFtGP9o6sEzRbQdatYtgA44FoXNc
d6HUfYh+sdEmunMXtlt91hM33mv+mthkMz7n5YDBW4Jz8BaPrww9sPOb/dUVDgBR6x6nixkf
J6NOD5frgPlYohbRedk8p3siZVgYTtSq0wv0QAIbSKWortIwpXB+SLi8dZY7Jz5Mp6+kX65i
f9VwnA89+HsMOxzl3Y51QELm4/F8P4hZwTSCkgYGKDt3lSfV185sqBn26iUGQcaL8Xjwq4sF
m89ntzeDIPwC7dY/6bA47Ryu3bwET/dv3tAhelUE1Odr3QdXH6PULjroYVNJ30QohdPyf0e6
3SorUEHz6/EH7LFvo9PLSAZSjP7++T5axhsddU2Go+f7X43Dmvunt9Po7+Po5Xj8evz6fyMM
MGGXFB2ffoy+nV5Hz6fX4+jx5dvJ3aVqXG8ATHJffcOLGpK8O6UxxVbMfyzbuBWwVxSHYeOE
DClrChsG/ydYWBslw7Ag/P51YYQFpQ37XCa5jLLL1bKYlaGfj7RhWcrpC44N3LAiuVxcLX6p
YECCy+PBU+jE5XxCKJ8YqXTf4xIuMPF8//3x5bsvQJ4+UsKAcgCgyXgPHJhZIqfNOPXZE6YE
m6tL13tESGjT60N6R/h0qIlUuOSlDhCBUbIHt+YbV2u07TQdVJPYjYwukDeby5gQ+XkiCC8a
NZWI4aB3wrBUpf8uaT5tKzm9W8R8nSlS+KIRA3t5M2ODw01A+PkwMO3hjO72kBZn6NNQhYKW
IepOQNlyCMMH/JEXpAFVssIIC1KZiCR0nwlguJZbwu5BdwrdJxjtOgDmdFmQhs66zdmOFYUY
QHRNbjs8ieTKnKMrsUdzxoFJjUrFK39AWgQcIDc9gfgXPQR7en4iTwb/TmbjPb1tRRL4avjP
dEa4PbVB13PC+7Hue4zfCeMMnPNgF8EgZ3LDD95lmf/z6+3xAS6V8f0vfzy1NMsN3xpwwhSt
2TGm3ac/6zZJ1OMWsmbhmnizUoecCBynGS4dKV2bjHsxCeVihCfoO9MnI8K7Fd5Oznylvqto
7X9HzNmmVj1RogtaFjj/UtwnMFw7hhd15bm611HG6xkFXQIjQiNqona94D+tznT/5G3olGd8
Tc8DdjtcALr48E/Xmj6bER54z3T/mmjpxOlQ0xeUn5R6kPg2qxIm/DeccyMJbyEtYE548zCj
HE4ot+aaXrvhlNcUc2iuxAFDzyQDgDiY3Y4JFZ52vGf/HZhfmvP+++nx5d/fxr/rRVqsl6P6
jeHnC5rVeyROo9/Oor7fezN0iZuS/4DTdG+kww6gII5pTUe7cZqKLt8Wy4FOMY5kanmOt2/U
6+P3787jsC2j6C/9RnhBBwZ0YMAqk5y3A4RD3M9ZOqjWOP4ytDWruQylogg7IBYosRWEoZ/b
lFrY5Onxxx/vGKHwbfRuuv089dLj+7fHJ4zx+aDdIox+w9F5v3/9fnzvz7t2FIDpkIJSfXMb
yRLKZ5yDy1nnNdEPgysQ5WKkUxyqOfg5OLd/SWUbFgQcXf2JmOp+AX9TsWSpT2rCQxbA3SpD
AZ8MitISN2pSTwKKqR2MMRs3zmztJaGJlFlFTUS1qypxXSSbb0KXNN72aDK/mREe3zRZLCa3
N8TWbQBTSp+nJlM7siHz6XgQsCc0hE3uGeWWyJBvyJtinX3402dUuLG6dMpWwoy3cXUwANgM
9er4KvVv+Jqcp6Ev9nShYA4Ja+ZhAkaumC/Giz6lx3VhYhSoTB58wnWkAkVlUeCWUyc2RlKf
Xt8frj65pVKTF2npFhjGRsoMCaPHxoGDdVwgEA75Vbs4uulosuRJ7thh2elVKXjVtchyv7rY
9i4B7aMNfqmHpWzyseVy9oUToogziGdf/AKoM2S/INwdNpBQwiXBz9XYECLyhAWZ3/hZrAaC
rqNviUnfYAo5C6YXyhEyhlXvX9guhlB0bkB7gPgFcw1CB6kh+F8HQ3kSdUDTj4A+giGcG7Yd
fT1WRFinBrK8m078rEyDkHAzuSWi4jWYVTKlYt61Awrzj1AitiAzwsLILoVwidlAeDK9IkLQ
tKVsATI8b4rtYkHIANqOCWG5LHqLGuNju4va3jQmqEOOugmt4TPiMfjzBzaDUE4nxCXPmhaT
8Ueaf+uKII3j5af7d7h3PNPfj9mDJOtt9/XKnxD+Ay3IjPDhYUNmwx2PW8xihmFBBaGOaCFv
iGvzGTK5JuQ47UCrzfhGseEJk1wv1IXWI2Q6PHkRMhveyROZzCcXGrW8u6buue0kyGcBcSFv
IDhN+mLm08sfeAW5MFVXCv7XWfCtxrE8vrzB9dY7y0J0F72tX83bYs+pRJR4APSdHKFFME/X
jpMjTKu9ZWgxT8pj6VLRA7JdN75QFQz6fR0S7yO1PgSQCRa5Aez9l+uanDFF1ZDH+4qiaZcU
EdZeJevEf7k6YzzcU7jDsoPG4OHc6SbdW2CThzIoBTqnPrimYV6vVqcssWxH1QsYs9DjLB3T
gqfH48u7MwmZPKRBpeguC9E2x8OQQfqyXPW1MnR5K9Hx9r7T6d4KyrokonIgtQ4rCU9zBhRx
RugbdT7Vany5H3pjKIl763ZFEWCxNFbvntFCssjQW3Rpd06dTE2PJlfisUlIHh9eT2+nb++j
6NeP4+sf29H3n8e3d0cRqfHoegF6rnBd8AMZS1Ax2CN89wodtqdWRKg825IOHrUj1P1YwIso
9M8BpFU7UfCYS8KFq34LWifEqxnaIVQxyyl1a033VdDc/zjPg7oAZ80H4ZLw1lxHmV6KbIBe
LBXho9NQCe+EpuhsQT3p4lGfVcVqI2LCyVH5WSjYOAa6pIHoSFn+bXKdh5WxzcEY515IlGsR
j/8rMKTJ0KCiJ6dC+fPim2/OwqEWtDGmw96uUCNQ9LvBUkg3/uas0RImmU8qwoLZoLT9wpYS
2BkMLPw48z/bGUDGNqqg5PoGsqUmjSwLtAPDW/m0WpZKUd7OpRjsN6NO/BHIHXFHUZmMxJJV
SzU0CxtURI2P3jCCJPefGmhbCGzJwGfmLGXagmKwLagYPUQ/SMWTmzk9SVCHWLFiqBC8yWjt
eRhDwKZKMEJzNwHeZVAprWZ/iC4z1IJ4Q61fbFBnGlJSHnikLFoXVf44Hr8C5/l0fHgfqePD
Py+np9P3X2cpEa3oqhXJ8bxGh0pab6tvnOjovX68rm5VqiyWmfaE678CGVSp/RmistMdWoiq
IhtaXXky4LL8DBHEpKwRZSpUF9NMysSIrO1zBF2xoyVGRTwMB1GRJbydF/6hT+BYYGnmnz5N
QfEGhXBxlm1Ky+NShNa+QEPz25zZhrzmeQlpZ9djz8+nF2AkTw//Gpd1/zm9/mvPg3MeHJvb
ayLStQWTYjYlYkh3UISnGxdFPN1aoCAM+A3h/MWGSTScrYLcO32JnrAOuJ3MBWz47qu86Sqd
SZ5+vjoBi87DxLcK3wFm0/NY6J8VFmeNT7xZxmGLPH+br/wmEz4cL7O9ZVUTBL473DLzWYMK
6J8S/m4tNwYmzfF3ZZLOLzDGq//x5fj6+DDSxFF+//2oH81Gss+tXoJaa07XpG+6K2JXrBG1
pjiTUsGKKtc+a6kam1itY0lokp1OahKrre9ZAAooDPNkdUl9c+2UZCVXcju46zvtyHxmeTZw
FWd5fqh2jKwtYLH20Ke98/rLPWcs7qqCJ66WuHk/OD6f3o8/Xk8PXiEHRzMVfCrwriJPZlPo
j+e3797y8kTWd/S1VhwqCLbMAM3lyV+1U4XNEpRpuOtY3RvxIzTiN/nr7f34PMpg6f/z+OP3
0RuqFnyDqXrWzDfe9J/hHINkeXKFP43vfA/Z5HszJyKRrU81PkJfT/dfH07PVD4v3ehF7/M/
V6/H49vDPayvu9OruKMKuQQ1L+H/k+ypAno0Tbz7ef8En0Z+u5duj1dQqb77lf3j0+PLf3tl
NrdVEyB0G5TeueHL3FovfWgWWHyovg4jA+Kdp3yP3BhxpidZQTyMExKIVPk19rbAQFB3+nyX
9HoPlruOQOGTJPRo1mfl6I+RqqjgqONYc2Gxq2VihOrRAXb4v99059rDVftAqBDgK3kZJNUG
Y+qg2iKJgvQq37NqskgTrZp4GYXlkSizmfKeUl7dT25rrKw6+jHz3xUSV1PcdAtwwqfX5/sX
OM2B53h8P736xmUI1j5MMEcog6qZverYy9fX0+NXR0qYhkVG2K818DM6Fst0GwoqDo3XBUjz
JG3/bF+ejTR8N3p/vX9APXfP9UOqoaNTRd5P9xRpyUByQl9YcUI3NxXoFH8rZFaQ8jPSg1ws
EiqTvkd5rmwW01qmPWPURvjpxlg2HvYfYf8289J+AghYEPFqh9bVRjXHkVKyWIRwb61WEnio
oqO+1vSZRN6COWIy2OAmFcGaAW3aoZ0p146zVJ1QSo7BCXSZHRJ+ViYxYEUQ90mSB2Uh1KHz
YdekmsTnZTixwfibBEMFyVL3nvPYxwUGh5FU4z/TpD1NAi6X7M6lGqguFfFA1tWEzgkU/6Kl
+hyZ/o4+VZ1WLfEGU2W5b8zx1UDfcIRtz57A5oOa94cu3f4+ngbFIafdMkt0pdvRMmtp3Uge
YTdBmASttOlUzAzBU+pdmSnrEqF/om6d5llbwYhdmLZzq4E7VqQdMXuLMwhqKhqqKrhT9t0q
UdXW57bWUCadLw1U3E8xMjdLnw4tWVfSXaYmrXJHf6XXrX9yoUPsmB0qTzD54P7hH9eaaSX1
KvNfyA3awMM/iiz5M9yGeq/rbXWwRd/O51fOl3/OYsGt1n0BkNuMMlz1WtFU7q/QvJRl8s8V
U3+myv8xQHM+JJGQw0nZdiH4u7mwoRpijtaF19MbH11kaB0DnNdfnx7fTovF7PaP8Sd7Dp+h
pVr5X+5T5dkdmgPG3zzDubwdf349jb75mt1zh60TNq4rOZ22TbrPrVZy/daEjqN9FswaicE/
7RmtE7HP0NpaqKzolR1EIg4L7rtjm8zo3wDN3qViqrQaseFF6vj4dpXnVJL3fvr2UEPYM6Us
X9xRuYYNZGkXUCfpxlgziBuZImfKSm3N9NdijULooMll8RH4T2+omz18JbaswCF7tpjO/gi3
XyGkeQk2QnRnKWUFWo3QRw4LB2grmsb1MUBRIzojkNAhBnmyDnzrcuBzaFJQsIQgybuSyYgg
bgd4g0SkMJGojTYZaH1O0+7S/fUgdU5Ti6FKc7R8JRwXHuSWylYOdHeRUZMXjl5gbDed+dgQ
V+5+i7/tM1H/nnZ/uytWp13bcxxT5I645xl45TuStV+E1D16EI6HaK2vHqbeNtYg3IPQKWba
aVIopJb3lWFuiWbtOnxq9utCPysC+5RZzgmQDev+NO23KoQO6mvhI6H1Q9KMd5kWedD9Xa3d
K0idSpvLBzyPyPUmKEIWMnqroaaTrQkFP1pvqZ9+vn9bfLIpzflcwfnsdLdNu5n69RBd0I3/
LcUBLQj78Q7IL9XogD5U3Qc+nArc0wH5X3c6oI98OKEP3AH534k6oI90wdz/lNQB+VUVHdDt
9AMl9cLI+kv6QD/dXn/gmxaEEjuCgENGfrIimEa7mDHl16CL8u2IiGEyEMJdc0314+6yagh0
HzQIeqI0iMutp6dIg6BHtUHQi6hB0EPVdsPlxowvt2ZMN2eTiUXltw1syX6lJSSjCiTwA4Su
UIMIeAyc6QUIXJ9LwnNaCyoypsSlyg6FiOML1a0ZvwiB67bfMqBBwA0l7lix9TFpKfzyPaf7
LjVKlcVGeF1BIgKveM6dNhVB5vUYKrJqd2e/KjtSQ/Mgdnz4+fr4/quvBYq+be1q8Hcbsdhz
h29YwnP0MMhRiHRNsNx1kX4u0MiCeEhDgFCFEYa7NF5UCT68FhpWYcKlfr5QhQh8zqos8WI3
7w7+aq4ryrKNy87UEC+D0eavGVfr8oobpSkS1mzc8wLbzVntKQ+5LTJnXQF5MweM9Hzva3Ms
kypJWI63DrivhcVf89lsOne0SnS8+pSHWnKGYWgr7d+dda7cPZhfiAdsJErhZFYWlMNzDM0W
6GLwUdtEnB3qXcl10DPPuNWUagnceM7gsjaAqRnrIQTf8jjLBxBsG+jPlwMYWDbBBlZRXsAN
Ycvi/+/sWprbxpHwfX+Fa067VZ6pyI+Mc8iBL0kcUSTNhyX7wtLYWkcVW3ZJ8k6yv367GwQJ
AmhIs4fENvojCIBAo9HoR60GydfBZRzCLMED/xTWC9T7xQW9gLktFqYIvn9x/dkyUUpgMEzu
Bwmpsnl2zwTXlxgvhxGdM6FSOhTmpMhjxtpRgu49xm69b7M3xntH/fbKfBucYLJFivPaxg1h
JUz0G4SuEHNYpJ4etcVAoSv04MgVM42P7mxtkGo6y+ztnjQwoWezQ4NOfv0FrYSe3v7anv9c
va7OX95WT++b7fl+9e81IDdP52iD94z8/Xy/ftlsP36c719Xj9/PD2+vbz/fzlfv76vd69vu
F7EZzNa77fqFEjavt3il1m8KwlZ9DVg07NscNquXzX9XSFVUsmg0BwsgmDVplg7UUpMgaPKk
ngCfgVlaB1USeTM+goId7t8Xkd3A3IFHdnX8GQxIAI8wHDRGmxrB944a2bRgDM3GYqU9v304
JZn/Gp0dg755d1ZluHtmncXf7uf74e3sESPbve3Ovq1f3tc7xViNwNC9ycD+a1B8YZZHXmgt
NKHlLIjzqZqSUCOYjyDLsxaa0EK9aerLrEAzyaFsONsSj2v8LM8taLxgMYtB5oMt36yjLR9c
U7YkfW1YH+z0QeRaY1Q/GY8ubuZ1YhDSOrEX2lqS009GA0oI+mFTPMlRqaspiHSWuq1+SfnH
ny+bx1+/r3+ePdLUfcbkpT+NGVuUnqXK0C4HtdQoOEYvQiZ/u+xsXdxFF9fXI/txzkChW43R
Re/j8G29PWweV4f101m0pX7CEj77a3P4dubt92+PGyKFq8PK6HigJmCV3zqYWwYjmII84F18
yrPkfnTJuH13i3cSl1wmdQ0Dv5Rp3JRlZLOdlMs7uo3vjIZG0CDgkneSO/lk6fr69qT6Msrm
+7ZJE4x9/qVBVdgeYRzPujbZba5aclLYXT5acjZ2Pp1DL1z0pbttcNBZFIwKWq7cqfy+xhdx
QL07JoCc/NYYkbqq7QcPOXBlOYzEJux8Vvtv3BedqwFcJGMXhcbAHBm4O81dU1zVbp7X+4P5
3iK4vLBOJiKIY5KbxwWMQk4FwMdOuOAYslfLKRebrUX4iTeLLpxzSkCc86aF6OzH0uxq9CmM
bTkvJGtpd2NjYp/AVLrZhs6FjL5W7mnhFd+GeXhtacE8BmaCblmMdkduFPPwCF9DBKPh7hFc
AscecTn0INfY4dQbWfqAxbBsy8iu++tR8PqTcNejCxNnq83emGsmhWaPcDdg7iajXYvPJBWU
QsGkGH1xNmKRH2klTdmG1mKTxubqFnLx5v3b0G1DbnKlZWigVDNStiFsLzNwae3HzrXrFYFz
qfhJthjHx7iIwJyw8jD+WJIwWTo0zN+orhUSYJ/5vx66OOmpsnLyHwKc3ISycvNKBDCVaUKo
dQpB6WUThdEJbRkfFbpnU+/Bs2tE5FrzkpJLFK3Jh6dgTmg1pmJx04ucc7AdQkiQOemNAn7a
F1bQJ1U+d5IrJmy1JC+yY2u0hZzQlCGyuVwwAQ80uH1YpB/g+2693wsVjjlVxwnn4iql4ge7
jrAl3zBRW7qnnf0F8tS5pz+UlRmxtlhtn95ez9KP1z/XO+GBJnVUJhMu4ybIC2skBDkIhT+R
sR4sFEZsFbQjMh6B4Kzifrnx3j9iDNkYoftFfs9oDdCN7+j7O6DUwZwELhiDVh2HeiC+Z7Q3
x+lYV1C9bP7crXY/z3ZvH4fN1nJ4SGK/3Zwt5bBlWgYESScIywgTfO4oynr8N3Eh085OIC5I
ST8aWd9yimjdt9l+vjfRndinfY+Fda+6a3Iv1J1fbTCvmqMTTeBcrz0QW/HpyjnQCA50r10T
couGr9ObL9c/jr8bscHlkglTrAM/M+E9mZff2dXSttefCIUGHEemMfCBZROk6fX18Y7hLcqS
i+WhfqU5pb1sJktbclevvJ/PI7xFpStYDIau2Kf2xLz2kxZT1v4Qtrz+9KUJIrwLjAN0SBHe
KAMT3llQ3qBB/R3SsRbWYwWhvwObLku8VrVX9buIy6+Fnu8gePcTYX5B4aCAjgbUstgSJzhY
7w7oJ7g6rPcUt3q/ed6uDh+79dnjt/Xj9832WQ2lhHaKTYXp5sRtdjHwjDDp5ddfFNPulh4t
q8JTR8zeC8wpH3rFvf4+O1pUDcwRgzGXlR0sjeNP6LTskx+n2AZyhhhLFp+YvL3/QB75g1g+
rQ8TPMJQTMrkkY6EcJJMg/y+GRfZXLp1WCBJlDLUNEJz+Vg1A5SkcZyG8F8Bo+IPr/uCrAhj
23WcsELwErOyPIg7lyqNpBWTeTeafwbzfBlMhU1mEY0tBuCYMkNEJMmTeHizEADrBDFhUDTS
DvtBYyp9BuS4qhubyQBpubS6Li+68F7cE+gcF0T+/Y3lUUHhpEGCeMWCF0YR4TNmN0Bl5Wr2
iB0wwe5jXygLuceYkIleGmZz9xg94O4MElEysPZ/EHKEVgpiN7nxtGmhlVKMZ22WX1nLlw9Y
rP/d5lMflpGza25iY+/zlVHoFXNbWTWt575BKIFZm/X6wR/qLGlLmZHr+9ZMHmJlLSkEHwgX
VkryoIaJUAjLBwafMeVX5uJW7WRaEnmN3XmJ9O7qts0yC2KRDdwrCk9NcO6RP6bqWCuK0CK7
GXAPLB+EvUgpkI8I85hQInuNRkEUvZyMVnQvE4oNGYZFU8HhUTBBuXEs4qxK/IHJAoJB7udc
2spJIoZDYUpoCNMbXSiEvG6KQcfCW5WrJtng1fi3a2mlydADJ0ge0PRqYMJR3KLAbZN25nk8
iACeUSrgCWyXahb6OigvcLMZbO1kPSXnwl1YZuYMmUQV5mrIxqH6ydVnKJdDo3oBjDNUjpim
/1hu9chE/M2PG62Gmx8jZaWX6NKeJdoUwAmVoxP3wC6gI9XCw7gZJ3U5la6zHGgeoPipAcju
YuElimlcCVNN8z4WA2v9xp18YogXQ3sWKZVR6ftusz18pyjET6/r/bNp+kiiy4zGfiBIiuLA
0yMfdLJBWmbk3zpJ0Fisszb4nUXc1uiweNVNt1aINWq46luB1myyKZR81LrryLSp7Iq8n/sZ
CuhRUQBSDRmLTzTwD+QuPyvFCLTDzA5dp1HavKx/PWxeW7FwT9BHUb5TBrpvJ70NlQGWRkap
CG5To8Up8gtlEhfQaHKy/QqHyZvhbMmBo2LoASbQVhF5IVXslUx2ZgCA0ClivVn5QpbD5IDz
O0CSONWcmUWfQBpHiRB96Oaelg2qF9gHEOpPk6WJaoVK9lSt675mJypeNM6KAIYCLZ5yW8aU
PtrVaV9nEOipXULh+s+PZ0pQGG/3h93HaxuEVs5bDw+McKIobvuWK4WdJZT4ol8//RjZUCJn
nz4VB86SHm2RMFSzSThg4vi37bjaMSK/9FKQJOHMjN/NIwOY7mmiWh5X3gcMbDD4VGAd6ZPG
bthH4e+l9xzdL+UBqjUW6yobHqAw+eSyitKSc58XFSKQ9mErhqrJFimjDCRynsUYkZE5U/Zv
aThTPQEpMsxxygl13cmpQpfgAQumEmesMPGCzP8j4ow+yqT2JYyxTUUEmfJyc6L9bLA7ot2g
uSglxSqyEnugdV2Xmv8uJUluiZhemtieo59WK9Nu0rcYEQDcbGRLYNsooheRTaP5cMtrUIBk
R0msHK9UM5trBLTi0CTDgNouqO1UGCw8z75WxQM0dF9H/9CtLPuFYzDqKYZD0tU8hD/L3t73
52fJ2+P3j3fBLqer7bOmvcAApcDFM3tIjAFdN/kWRBIC6wqK+3mQjSs8/dc42SuYyplN4kCr
+xYl5GmsCUZguGgUlK0uZTiQ2EwxMmzlMTm/FrewS8FeFTJ3+KRnE2+zMkf3uAqfFNidnj4o
VbqN24klwgo2RG1vF9QyaZnfW89aXqPPDRzPWRTlGsMTKi20W+uZ+z/375st2rJBx14/Dusf
a/hlfXj87bff/qVkcMPYKVT3hIRaU5DPi+yui5FiV0RgHdgdF4NF7VAVLSMXk7RFt9QgxytZ
LAQImGa2YN1Q2lYtyogRygSAusbvUAIkE4Yl8GGO1IVjTLdczvDz9FZYFXgQ5ROY9h11nkT+
xqwYyHhVoUWTIWEQxqKpU7xXh1ktVEmOLs/Etscws+9CHnlaHVZnKIg8ov7WIo2jNti1vR+h
ly7ZgKLtxFpw/f5sQ1sy5T9HTWtRW+IBDfgI0yX9rUEB44dBmxMzRE0R1HY+AwTc5Mb8jEAE
N20UCO6SdJDoGP3FSKUbXx4Lo1tL8o8+8uWg0caSvG0PBQWfQLE95tHUB9ERb34YFSq0fppV
6CohFEXOIMyoq0yDey2OtpSy8X64n+yWwAJZLkaj0OSFcZ2Ko5KbOim8fGrHyAPxWI42T2wW
cTVFNY9+8LDBwrjATROVAjq8hc0pthvUh3cHGgTD2tDEQCTI1mllVIKX/fdaYdDWJqruieKF
wTDEMGlP/Ho8VseEAt0TfqC0wk+Ls0EkMDZG0sBLSZ0Bml94bEx21GeQlqt9xjqttO9vF9pJ
aHYA8iKK5sBR4KRJ3WdC9RW3IHyNnW8iGcMBmC5gHbgAmAqEyPbetstDTA4m9wFV3pQpiN9a
Flc5sJj1fIryBF1q6i5ZstxLgSd7eFsoHmA2+w4Os9UGlC9NZnSJHGeNttBmUIMftSOv6E7t
xXKp6eUauh9xvMGUmXH5AWvnfZzq2+QQRiux8YGTTedewWSM65fVEaR8s5eQth2H0fnZKw+2
lNyx7ShvPgpWJj1pC3mk+oFwYXNbGgqocRg12TSIR5dfrkj7r58RSziDJNYZohxOKUJoXJLA
t4gU3ii8tFvEQFWfDWnGbv7j5rN9N29Fxzik6JPl/YNvXTTiE8BojRNvUloS0HpFci/Vr3Wp
3mndfG5alSnxNDU+v/oUU1foT4YxN7UXNcuQ8YaIxnGTTyojfJouFNjCP4ZZ7SedT5x++El8
0u1zp/uOidmOMTgcIsFu4bqeibN2Wn5a3nzSvrQkMDalHaLm1eAdBrkfq+cQKnX0EB9a7eaW
II3aGNHu7JJ357Gr+2KUSMuZD2LKiwwUeNJhT7p1uohTHN6sGOhHunKhIydexkSWHa4W9c6k
Wu8PeH7Bo3nw9p/1bvW8VpfTDNtn7beU8PFmAVaaYLWxNdZ9t6tr0MG9loiA6KilYyizIFPd
zYQaqYStKrtr13U+VCQBwSayg0hF8gh8MuS0erKvZBYykYqF7gN3ohJWAw9hqYIFl0JN7WDV
fi9Cw9xy7BQ+XjQ76HRDnCUZJsxgUYNba8dOExV4VmDp4tj++Yo5P6sDNI2WLDcTIyjuBEV0
CGa/b3FlwASjEBZhgKiYgM4EEGZMPF3cVzrpsBoSOwsjRF0zgQ2IuiSDAJ6OwVfHXE4qQhRo
b0vRRhwDzpkLEzUOuTDaON9njsXQKncdnccjIRsvRIxg7hp+NF+b4p0ql/KebLngKxwT0rC2
cVzMFx4T0VBMKIpD6ugPvxe1E5LCm7BhbcSknGeOGQFiTwCnC+fqIIs6hkHLSlgA0Fj1lnN7
MCIXiHv3/wHh6BnbougBAA==

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--jI8keyz6grp/JLjh--

